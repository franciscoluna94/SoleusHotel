using AutoMapper;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.Constants;
using SoleusHotelApi.Constants.ErrorMessages;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Extensions;
using SoleusHotelApi.Helpers;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.Services
{
    public class HotelUserService : IHotelUserService
    {
        private readonly IRoomService _roomService;
        private readonly UserManager<HotelUser> _userManager;
        private readonly SignInManager<HotelUser> _signInManager;
        private readonly IHotelUserRepository _userRepository;
        private readonly IRoomRepository _roomRepository;
        private readonly ITokenService _tokenService;
        private readonly IMapper _mapper;

        public HotelUserService(IRoomService roomService, UserManager<HotelUser> userManager, SignInManager<HotelUser> signInManager, IHotelUserRepository userRepository,
            IRoomRepository roomRepository, ITokenService tokenService, IMapper mapper)
        {
            _roomService = roomService;
            _userManager = userManager;
            _signInManager = signInManager;
            _userRepository = userRepository;
            _roomRepository = roomRepository;
            _tokenService = tokenService;
            _mapper = mapper;
        }

        #region Public Methods
        public async Task<ServiceResponse<PagedList<HotelUserWithRolesDto>>> GetHotelUsers(HotelUserParams hotelUserParams)
        {
            ServiceResponse<PagedList<HotelUserWithRolesDto>> response = new();

            PagedList<HotelUserWithRolesDto> userList = await _userRepository.GetAllHotelUsers(hotelUserParams);
            foreach (var user in userList)
            {
                HotelUser userInDb = await _userRepository.GetHotelUserWithRoomByRoomNumber(user.RoomNumber);
                user.UserRoles = await _userManager.GetRolesAsync(userInDb);
            }

            return response.GetValidServiceResponse(userList);
        }

        public async Task<ServiceResponse<PagedList<HotelUserWithRequestsDto>>> GetHotelUsersWithCreatedRoomRequests(HotelUserParams hotelUserParams)
        {
            return new ServiceResponse<PagedList<HotelUserWithRequestsDto>>
            {
                IsValid = true,
                Data = await _userRepository.GetAllGuestsWithRoomRequests(hotelUserParams)
            };
        }

        public async Task<ServiceResponse<HotelUserDto>> GetHotelUser(string roomNumber)
        {
            return new ServiceResponse<HotelUserDto>
            {
                IsValid = true,
                Data = await _userRepository.GetHotelUserDtoAsync(roomNumber)
            };
        }

        public async Task<ServiceResponse<HotelUserWithRolesDto>> GetHotelUserWithRoles(string roomNumber)
        {
            ServiceResponse<HotelUserWithRolesDto> response = new();

            var user = await _userManager.Users.Include(r => r.Room).FirstOrDefaultAsync(x => x.Room.RoomNumber == roomNumber);

            if (user is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, HotelUserServiceError.UserNotFound);
            }

            HotelUserWithRolesDto userWithRolesDto = _mapper.Map<HotelUserWithRolesDto>(user);
            userWithRolesDto.UserRoles = await _userManager.GetRolesAsync(user);

            return response.GetValidServiceResponse(userWithRolesDto);
        }

        public async Task<ServiceResponse<CreatedHotelUserDto>> CreateHotelUser(CreateHotelUserDto createHotelUserDto)
        {
            ServiceResponse<CreatedHotelUserDto> response = new();

            if (await UserExists(createHotelUserDto.RoomNumber))
            {
                return response.GetFailedServiceResponse(StatusCodes.Status409Conflict, HotelUserServiceError.UserAlreadyExists);
            }

            createHotelUserDto.RoomNumber = createHotelUserDto.RoomNumber.ToUpper();
            createHotelUserDto.GuestName = createHotelUserDto.GuestName.ToUpper();


            HotelUser hotelUser = _mapper.Map<HotelUser>(createHotelUserDto);

            IdentityResult createUserResult = await _userManager.CreateAsync(hotelUser, createHotelUserDto.Password);

            if (!createUserResult.Succeeded)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status500InternalServerError,
                    createUserResult.Errors.Select(x => x.Description).First());
            }

            foreach (var role in createHotelUserDto.Roles)
            {
                IdentityResult roleResult = await _userManager.AddToRoleAsync(hotelUser, role);

                if (!roleResult.Succeeded)
                {
                    return response.GetFailedServiceResponse(StatusCodes.Status500InternalServerError,
                    createUserResult.Errors.Select(x => x.Description).First());
                }
            }

            ServiceResponse<bool> userAddedToRoom = await _roomService.AddUserToRoom(hotelUser, createHotelUserDto);

            if (!userAddedToRoom.IsValid)
            {
                return response.GetFailedServiceResponse(userAddedToRoom.StatusCode, userAddedToRoom.Errors.First());
            }

            Room userRoom = await _roomRepository.GetRoomByRoomNumber(createHotelUserDto.RoomNumber);
            hotelUser.RoomId = userRoom.Id;
            await _userManager.UpdateAsync(hotelUser);


            CreatedHotelUserDto createdHotelUserDto = _mapper.Map<CreatedHotelUserDto>(hotelUser);
            createdHotelUserDto.UserRoles = await _userManager.GetRolesAsync(hotelUser);

            return response.GetValidServiceResponse(createdHotelUserDto);
        }

        public async Task<ServiceResponse<CreatedHotelUserDto>> EditUser(CreateHotelUserDto editUser)
        {
            ServiceResponse<CreatedHotelUserDto> response = new();

            HotelUser user = await _userManager.Users.Include(r => r.Room).SingleOrDefaultAsync(x => x.Room.RoomNumber == editUser.RoomNumber);

            if (user is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, HotelUserServiceError.UserNotFound);
            }

            editUser.GuestName = editUser.GuestName.ToUpper();

            ServiceResponse<bool> editRolesResponse = await EditUserRoles(user, editUser.Roles);

            if (!editRolesResponse.IsValid)
            {
                return response.GetFailedServiceResponse(editRolesResponse.StatusCode, editRolesResponse.Errors.First());
            }

            _mapper.Map(editUser, user);

            _userRepository.Update(user);

            if (!await _userRepository.SaveAllAsync())
            {
                return response.GetFailedServiceResponse(StatusCodes.Status500InternalServerError, HotelUserServiceError.ChangesUnsaved);
            }

            if (!String.IsNullOrEmpty(editUser.Password))
            {
                string passwordResetToken = await _userManager.GeneratePasswordResetTokenAsync(user);
                IdentityResult result = await _userManager.ResetPasswordAsync(user, passwordResetToken, editUser.Password);

                if (!result.Succeeded)
                {
                    return response.GetFailedServiceResponse(StatusCodes.Status500InternalServerError, HotelUserServiceError.UserEditedButPassword);
                }
            }

            ServiceResponse<bool> isTheRoomUpdated = await _roomService.UpdateRoom(editUser);

            if (!isTheRoomUpdated.IsValid)
            {
                return response.GetFailedServiceResponse(isTheRoomUpdated.StatusCode, isTheRoomUpdated.Errors.First());
            }

            CreatedHotelUserDto updatedUser = _mapper.Map<CreatedHotelUserDto>(user);
            updatedUser.UserRoles = await _userManager.GetRolesAsync(user);

            return response.GetValidServiceResponse(updatedUser);
        }

        public async Task<ServiceResponse<HotelUserDto>> EditGuestUser(HotelUserDto editUser)
        {
            ServiceResponse<HotelUserDto> response = new();

            HotelUser user = await _userManager.Users.Include(r => r.Room).SingleOrDefaultAsync(x => x.Room.RoomNumber == editUser.RoomNumber);

            if (user is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, HotelUserServiceError.UserNotFound);
            }

            IList<string> userRoles = await _userManager.GetRolesAsync(user);
            if (userRoles.Any(x => x != Roles.Guest))
            {
                return response.GetFailedServiceResponse(StatusCodes.Status403Forbidden, HotelUserServiceError.ForbiddenEditPermission);
            }

            user.GuestName = editUser.GuestName.ToUpper();

            _userRepository.Update(user);

            if (!await _userRepository.SaveAllAsync())
            {
                return response.GetFailedServiceResponse(StatusCodes.Status500InternalServerError, HotelUserServiceError.ChangesUnsaved);
            }

            ServiceResponse<bool> isTheRoomUpdated = await _roomService.UpdateRoom(_mapper.Map<CreateHotelUserDto>(editUser));

            if (!isTheRoomUpdated.IsValid)
            {
                return response.GetFailedServiceResponse(isTheRoomUpdated.StatusCode, isTheRoomUpdated.Errors.First());
            }

            return response.GetValidServiceResponse(_mapper.Map<HotelUserDto>(user));
        }

        public async Task<ServiceResponse<LoggedUserDto>> LoginHotelUser(LoginHotelUserDto loginHotelUserDto)
        {
            ServiceResponse<LoggedUserDto> response = new();

            if (loginHotelUserDto is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status400BadRequest, HotelUserServiceError.NullPasswordAndUserName);
            }

            HotelUser user = await _userManager.Users.Include(r => r.Room)
                .SingleOrDefaultAsync(x => x.Room.RoomNumber == loginHotelUserDto.RoomNumber.ToUpper());

            if (user is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status400BadRequest, HotelUserServiceError.InvalidUserName);
            }

            SignInResult result = await _signInManager.CheckPasswordSignInAsync(user, loginHotelUserDto.Password, false);

            if (!result.Succeeded)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status400BadRequest, HotelUserServiceError.InvalidPassword);
            }

            return response.GetValidServiceResponse(new LoggedUserDto
            {
                RoomNumber = user.Room.RoomNumber,
                GuestName = user.GuestName,
                Token = await _tokenService.CreateToken(user)
            });
        }

        public async Task<ServiceResponse<LoggedUserDto>> ForgotPassword(HotelUserPasswordUpdatesDto userPasswordForgotDto)
        {
            ServiceResponse<LoggedUserDto> response = new();

            HotelUser user = await _userManager.Users.Include(r => r.Room).FirstOrDefaultAsync(x => x.Room.RoomNumber == userPasswordForgotDto.RoomNumber);

            if (user is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, HotelUserServiceError.UserNotFound);
            }

            IList<string> roles = await _userManager.GetRolesAsync(user);

            if (!roles.Contains(Roles.Guest))
            {
                return response.GetFailedServiceResponse(StatusCodes.Status403Forbidden, HotelUserServiceError.ForbiddenPasswordChangeRole);
            }

            if (user.GuestName != userPasswordForgotDto.GuestName.ToUpper())
            {
                return response.GetFailedServiceResponse(StatusCodes.Status400BadRequest, HotelUserServiceError.WrongGuestName);
            }

            string passwordResetToken = await _userManager.GeneratePasswordResetTokenAsync(user);
            IdentityResult result = await _userManager.ResetPasswordAsync(user, passwordResetToken, userPasswordForgotDto.Password);

            if (!result.Succeeded)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status500InternalServerError, result.Errors.Select(x => x.Description).First());
            }

            return response.GetValidServiceResponse(new LoggedUserDto
            {
                RoomNumber = user.Room.RoomNumber,
                GuestName = user.GuestName,
                Token = await _tokenService.CreateToken(user)
            });
        }

        public async Task<ServiceResponse<GenerateHotelUserPasswordDto>> GenerateUserPassword(string roomNumber)
        {
            ServiceResponse<GenerateHotelUserPasswordDto> response = new();

            HotelUser user = await _userManager.Users.Include(r => r.Room).FirstOrDefaultAsync(x => x.Room.RoomNumber == roomNumber);

            if (user is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status400BadRequest, HotelUserServiceError.UserNotFound);
            }

            IList<string> userRoles = await _userManager.GetRolesAsync(user);
            if (userRoles.Any(x => x != Roles.Guest))
            {
                return response.GetFailedServiceResponse(StatusCodes.Status403Forbidden, HotelUserServiceError.ForbiddenEditPermission);
            }

            string generatedPassword = PasswordGenerator.GeneratePassword();

            string passwordResetToken = await _userManager.GeneratePasswordResetTokenAsync(user);
            IdentityResult result = await _userManager.ResetPasswordAsync(user, passwordResetToken, generatedPassword);

            if (!result.Succeeded)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status500InternalServerError, result.Errors.Select(x => x.Description).First());
            }

            GenerateHotelUserPasswordDto generatedPasswordUser = _mapper.Map<GenerateHotelUserPasswordDto>(user);
            generatedPasswordUser.Password = generatedPassword;

            return response.GetValidServiceResponse(generatedPasswordUser);
        }

        public async Task<ServiceResponse<bool>> ResetGuestsPasswords(string password)
        {
            ServiceResponse<bool> response = new();
            List<string> failedUserChanges = new();

            List<HotelUser> users = await _userRepository.GetHotelUsersByRole(Roles.Guest);

            foreach (var user in users)
            {
                string passwordResetToken = await _userManager.GeneratePasswordResetTokenAsync(user);
                IdentityResult result = await _userManager.ResetPasswordAsync(user, passwordResetToken, password);
                if (!result.Succeeded)
                {
                    failedUserChanges.Add(user.Room.RoomNumber);
                }
            }

            if (failedUserChanges.Count > 0)
            {
                response.StatusCode = StatusCodes.Status500InternalServerError;
                response.Errors.AddRange(failedUserChanges);
                return response;
            }

            return response.GetValidServiceResponse(true);
        }

        public async Task<ServiceResponse<bool>> DeleteHotelUser(string roomNumber)
        {
            ServiceResponse<bool> response = new();

            HotelUser user = _userManager.Users.FirstOrDefault(x => x.Room.RoomNumber == roomNumber);

            if (user is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, HotelUserServiceError.UserNotFound);
            }

            if (await IsLastAdmin(user))
            {
                return response.GetFailedServiceResponse(StatusCodes.Status409Conflict, HotelUserServiceError.LastAdmin);
            }

            IdentityResult result = await _userManager.DeleteAsync(user);
            if (!result.Succeeded)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status500InternalServerError, result.Errors.Select(x => x.Description).First());
            }

            return response.GetValidServiceResponse(true);
        }
        #endregion

        #region Private Methods
        private async Task<bool> UserExists(string roomNumber)
        {
            return await _userManager.Users.AnyAsync(x => x.Room.RoomNumber == roomNumber.ToUpper());
        }

        private async Task<ServiceResponse<bool>> EditUserRoles(HotelUser user, List<string> selectedRoles)
        {
            ServiceResponse<bool> response = new();

            IList<string> userRoles = await _userManager.GetRolesAsync(user);

            IdentityResult result = await _userManager.AddToRolesAsync(user, selectedRoles.Except(userRoles));

            if (!result.Succeeded)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status500InternalServerError, HotelUserServiceError.UnableToChangeRoles);
            }

            result = await _userManager.RemoveFromRolesAsync(user, userRoles.Except(selectedRoles));

            if (!result.Succeeded)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status500InternalServerError, HotelUserServiceError.RemoveRolesFailed);
            }

            return response.GetValidServiceResponse(true);
        }

        private async Task<bool> IsLastAdmin(HotelUser user)
        {
            IList<string> roles = await _userManager.GetRolesAsync(user);

            if (!roles.Contains(Roles.Admin))
            {
                return false;
            }

            IList<HotelUser> adminUsers = await _userManager.GetUsersInRoleAsync(Roles.Admin);

            if (adminUsers.Count > 1)
            {
                return false;
            }

            return true;
        }
        #endregion
    }
}
