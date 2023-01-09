using AutoMapper;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.Constants;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.DTOs.HotelUser;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Helpers;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.Services
{
    public class HotelUserService : IHotelUserService
    {
        private readonly UserManager<HotelUser> _userManager;
        private readonly SignInManager<HotelUser> _signInManager;
        private readonly IHotelUserRepository _userRepository;
        private readonly ITokenService _tokenService;
        private readonly IMapper _mapper;

        public HotelUserService(UserManager<HotelUser> userManager, SignInManager<HotelUser> signInManager, IHotelUserRepository userRepository,
            ITokenService tokenService, IMapper mapper)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _userRepository = userRepository;
            _tokenService = tokenService;
            _mapper = mapper;
        }

        #region Public Methods
        public async Task<ServiceResponse<List<HotelUserWithRolesDto>>> GetHotelUsers()
        {
            ServiceResponse<List<HotelUserWithRolesDto>> response = new();

            List<HotelUser> userList = await _userRepository.GetAllUsers();
            List<HotelUserWithRolesDto> usersWithRoles = _mapper.Map<List<HotelUserWithRolesDto>>(userList);
            foreach (var user in usersWithRoles)
            {
                HotelUser userInDb = userList.First(room => room.RoomNumber == user.RoomNumber);
                user.UserRoles = await _userManager.GetRolesAsync(userInDb);
            }

            response.IsValid = true;
            response.Data = usersWithRoles;
            return response;
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

            var user = await _userManager.Users.FirstOrDefaultAsync(x => x.RoomNumber == roomNumber);

            if (user is null)
            {
                response.Errors.Add("User not found");
                return response;
            }

            HotelUserWithRolesDto userWithRolesDto = _mapper.Map<HotelUserWithRolesDto>(user);
            userWithRolesDto.UserRoles = await _userManager.GetRolesAsync(user);

            response.IsValid = true;
            response.Data = userWithRolesDto;

            return response;
        }

        public async Task<ServiceResponse<List<HotelUserWithRequestsDto>>> GetHotelUserWithRequests()
        {
            List<HotelUser> guests = await _userRepository.GetAllGuests();

            return new ServiceResponse<List<HotelUserWithRequestsDto>>
            {
                IsValid = true,
                Data = _mapper.Map<List<HotelUserWithRequestsDto>>(guests)
            };
        }

        public async Task<ServiceResponse<HotelUserWithRolesDto>> CreateHotelUser(CreateHotelUserDto createHotelUserDto)
        {
            ServiceResponse<HotelUserWithRolesDto> response = new();

            if (await UserExists(createHotelUserDto.RoomNumber))
            {
                response.Errors.Add("This room already has an user");
                return response;
            }

            createHotelUserDto.RoomNumber = createHotelUserDto.RoomNumber.ToUpper();
            createHotelUserDto.GuestName = createHotelUserDto.GuestName.ToUpper();

            HotelUser hotelUser = _mapper.Map<HotelUser>(createHotelUserDto);
            hotelUser.UserName = hotelUser.RoomNumber;

            IdentityResult createUserResult = await _userManager.CreateAsync(hotelUser, createHotelUserDto.Password);

            if (!createUserResult.Succeeded)
            {
                response.Errors = createUserResult.Errors.Select(x => x.Description).ToList();
                return response;
            }

            foreach(var role in createHotelUserDto.Roles)
            {
                IdentityResult roleResult = await _userManager.AddToRoleAsync(hotelUser, role);

                if (!roleResult.Succeeded)
                {
                    response.Errors = createUserResult.Errors.Select(x => x.Description).ToList();
                    return response;
                }
            }            

            HotelUserWithRolesDto createdHotelUser = _mapper.Map<HotelUserWithRolesDto>(hotelUser);
            createdHotelUser.UserRoles = await _userManager.GetRolesAsync(hotelUser);

            response.IsValid = true;
            response.Data = createdHotelUser;

            return response;
        }

        public async Task<ServiceResponse<LoggedUserDto>> LoginHotelUser(LoginHotelUserDto loginHotelUserDto)
        {
            ServiceResponse<LoggedUserDto> response = new();

            if (loginHotelUserDto is null)
            {
                response.Errors.Add("Please enter a room number and a password");
                return response;
            }

            HotelUser user = await _userManager.Users.SingleOrDefaultAsync(x => x.RoomNumber == loginHotelUserDto.RoomNumber.ToUpper());

            if (user is null)
            {
                response.Errors.Add("Invalid username");
                return response;
            }

            SignInResult result = await _signInManager.CheckPasswordSignInAsync(user, loginHotelUserDto.Password, false);

            if (!result.Succeeded)
            {
                response.Errors.Add("Invalid password");
                return response;
            }

            response.IsValid = true;
            response.Data = new LoggedUserDto
            {
                RoomNumber = user.RoomNumber,
                GuestName = user.GuestName,
                Token = await _tokenService.CreateToken(user)
            };

            return response;
        }

        public async Task<ServiceResponse<HotelUserWithRolesDto>> EditUser(EditHotelUserDto editUser)
        {
            ServiceResponse<HotelUserWithRolesDto> response = new();

            HotelUser user = await _userManager.Users.SingleOrDefaultAsync(x => x.RoomNumber == editUser.RoomNumber);

            if (user is null)
            {
                response.Errors.Add("This user doesn't exist");
                return response;
            }

            editUser.GuestName = editUser.GuestName.ToUpper();

            ServiceResponse<bool> editRolesResponse = await EditUserRoles(user, editUser.Roles);

            if (!editRolesResponse.IsValid)
            {
                response.Errors = editRolesResponse.Errors;
                return response;
            }

            _mapper.Map(editUser, user);

            _userRepository.Update(user);

            if (!await _userRepository.SaveAllAsync())
            {
                response.Errors.Add("Unable to save your changes");
                return response;
            }

            if (!String.IsNullOrEmpty(editUser.Password))
            {
                string passwordResetToken = await _userManager.GeneratePasswordResetTokenAsync(user);
                IdentityResult result = await _userManager.ResetPasswordAsync(user, passwordResetToken, editUser.Password);

                if (!result.Succeeded)
                {
                    response.Errors.Add("User partially updated: Unable to update the password");
                    return response;
                }
            }            

            HotelUserWithRolesDto updatedUser = _mapper.Map<HotelUserWithRolesDto>(user);
            updatedUser.UserRoles = await _userManager.GetRolesAsync(user);

            response.IsValid = true;
            response.Data = updatedUser;
            return response;
        }

        public async Task<ServiceResponse<HotelUserDto>> EditGuestUser(HotelUserDto editUser)
        {
            ServiceResponse<HotelUserDto> response = new();

            HotelUser user = await _userManager.Users.SingleOrDefaultAsync(x => x.RoomNumber == editUser.RoomNumber);

            if (user is null)
            {
                response.Errors.Add("This user doesn't exist");
                return response;
            }

            IList<string> userRoles = await _userManager.GetRolesAsync(user);
            if (userRoles.Any(x => x != Roles.Guest))
            {
                response.Errors.Add("You don't have the permission to modify this user");
                return response;
            }

            editUser.GuestName = editUser.GuestName.ToUpper();

            _mapper.Map(editUser, user);

            _userRepository.Update(user);

            if (!await _userRepository.SaveAllAsync())
            {
                response.Errors.Add("Unable to save your changes");
                return response;
            }

            response.IsValid = true;
            response.Data = _mapper.Map<HotelUserDto>(user);
            return response;
        }

        public async Task<ServiceResponse<LoggedUserDto>> ForgotPassword(HotelUserPasswordUpdatesDto userPasswordForgotDto)
        {
            ServiceResponse<LoggedUserDto> response = new();

            HotelUser user = await _userManager.Users.FirstOrDefaultAsync(x => x.RoomNumber == userPasswordForgotDto.RoomNumber);

            if (user is null)
            {
                response.Errors.Add("User not found");
                return response;
            }

            IList<string> roles = await _userManager.GetRolesAsync(user);

            if (!roles.Contains(Roles.Guest))
            {
                response.Errors.Add("Unable to modify this room password, please contact your administrator");
                return response;
            }

            if (userPasswordForgotDto.RoomNumber != user.RoomNumber)
            {
                response.Errors.Add("Unable to modify other room password");
                return response;
            }


            if (user.GuestName != userPasswordForgotDto.GuestName.ToUpper())
            {
                response.Errors.Add("The guest name provided is not correct");
                return response;
            }

            string passwordResetToken = await _userManager.GeneratePasswordResetTokenAsync(user);
            IdentityResult result = await _userManager.ResetPasswordAsync(user, passwordResetToken, userPasswordForgotDto.Password);

            if (!result.Succeeded)
            {
                response.Errors = result.Errors.Select(x => x.Description).ToList();
                return response;
            }


            response.IsValid = true;
            response.Data = new LoggedUserDto
            {
                RoomNumber = user.RoomNumber,
                GuestName = user.GuestName,
                Token = await _tokenService.CreateToken(user)
            };
            return response;
        }

        public async Task<ServiceResponse<GenerateHotelUserPasswordDto>> GenerateUserPassword(string roomNumber)
        {
            ServiceResponse<GenerateHotelUserPasswordDto> response = new();

            HotelUser user = await _userManager.Users.FirstOrDefaultAsync(x => x.RoomNumber == roomNumber);

            if (user is null)
            {
                response.Errors.Add("The user doesn't exist");
                return response;
            }

            IList<string> userRoles = await _userManager.GetRolesAsync(user);
            if (userRoles.Any(x => x != Roles.Guest))
            {
                response.Errors.Add("You don't have the permission to modify this user");
                return response;
            }

            string generatedPassword = PasswordGenerator.GeneratePassword();

            string passwordResetToken = await _userManager.GeneratePasswordResetTokenAsync(user);
            IdentityResult result = await _userManager.ResetPasswordAsync(user, passwordResetToken, generatedPassword);

            if (!result.Succeeded)
            {
                response.Errors = result.Errors.Select(x => x.Description).ToList();
                return response;
            }

            GenerateHotelUserPasswordDto generatedPasswordUser = _mapper.Map<GenerateHotelUserPasswordDto>(user);
            generatedPasswordUser.Password = generatedPassword;

            response.IsValid = true;
            response.Data = generatedPasswordUser;
            return response;
        }

        public async Task<ServiceResponse<List<string>>> ResetGuestsPasswords(string password)
        {
            ServiceResponse<List<string>> response = new();
            List<string> failedUserChanges = new();

            List<HotelUser> users = await _userRepository.GetAllGuests();

            foreach (var user in users)
            {
                string passwordResetToken = await _userManager.GeneratePasswordResetTokenAsync(user);
                IdentityResult result = await _userManager.ResetPasswordAsync(user, passwordResetToken, password);
                if (!result.Succeeded)
                {
                    failedUserChanges.Add(user.RoomNumber);
                }
            }

            if (failedUserChanges.Count > 0)
            {
                response.Errors.AddRange(failedUserChanges);
            }

            response.IsValid = true;
            return response;
        }

        public async Task<ServiceResponse<List<HotelRoleDto>>> GetUsersWithRolesAsync()
        {
            ServiceResponse<List<HotelRoleDto>> response = new();

            var users = await _userManager.Users
               .Include(r => r.UserRoles)
               .ThenInclude(r => r.Role)
               .OrderBy(u => u.RoomNumber)
               .Select(u => new HotelRoleDto
               {
                   Id = u.Id,
                   RoomNumber = u.RoomNumber,
                   Roles = u.UserRoles.Select(r => r.Role.Name).ToList()
               })
                .ToListAsync();

            response.IsValid = true;
            response.Data = users;

            return response;
        }
        
        public async Task<ServiceResponse<bool>> DeleteHotelUser(string roomNumber)
        {
            ServiceResponse<bool> response = new();

            HotelUser user = _userManager.Users.FirstOrDefault(x => x.RoomNumber == roomNumber);

            if (user is null)
            {
                response.Errors.Add("This user doesn't exist");
                return response;
            }

            if (await IsLastAdmin(user))
            {
                response.Errors.Add("Unable to delete the last admin user");
                return response;
            }

            IdentityResult result = await _userManager.DeleteAsync(user);
            if (!result.Succeeded)
            {
                response.Errors = result.Errors.Select(x => x.Description).ToList();
                return response;
            }

            response.IsValid = true;
            response.Data = true;
            return response;
        }
        #endregion

        #region Private Methods
        private async Task<bool> UserExists(string roomNumber)
        {
            return await _userManager.Users.AnyAsync(x => x.RoomNumber == roomNumber.ToUpper());
        }

        private async Task<ServiceResponse<bool>> EditUserRoles(HotelUser user, List<string> selectedRoles)
        {
            ServiceResponse<bool> response = new();

            IList<string> userRoles = await _userManager.GetRolesAsync(user);

            IdentityResult result = await _userManager.AddToRolesAsync(user, selectedRoles.Except(userRoles));

            if (!result.Succeeded)
            {
                response.Errors.Add("Unable to modify roles");
                return response;
            }

            result = await _userManager.RemoveFromRolesAsync(user, userRoles.Except(selectedRoles));

            if (!result.Succeeded)
            {
                response.Errors.Add("Failed to remove roles");
            }

            response.IsValid = true;
            response.Data = true;
            return response;
        }

        private async Task<bool> IsLastAdmin(HotelUser user)
        {
            IList<string> roles = await _userManager.GetRolesAsync(user);

            if (!roles.Contains(Roles.Admin))
            {
                return false;
            }

            IList<HotelUser> adminUsers = await _userManager.GetUsersInRoleAsync(Roles.Admin);

            if (adminUsers.Count() > 1)
            {
                return false;
            }

            return true;
        }
        #endregion
    }
}
