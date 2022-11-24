using AutoMapper;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.DTOs.HotelUser;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.Services
{
    public class HotelUserService : IHotelUserService
    {
        private readonly UserManager<HotelUser> _userManager;
        private readonly SignInManager<HotelUser> _signInManager;
        private readonly ITokenService _tokenService;
        private readonly IMapper _mapper;

        public HotelUserService(UserManager<HotelUser> userManager, SignInManager<HotelUser> signInManager,
            ITokenService tokenService,IMapper mapper)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _tokenService = tokenService;
            _mapper = mapper;
        }

        #region Public Methods
        public async Task<ServiceResponse<LoggedUserDto>> CreateHotelUser(CreateHotelUserDto createHotelUserDto)
        {
            ServiceResponse<LoggedUserDto> response = new();

            if (await UserExists(createHotelUserDto.RoomNumber))
            {
                response.Errors.Add("This room already has an user");
                return response;
            }

            createHotelUserDto.RoomNumber = createHotelUserDto.RoomNumber.ToUpper();

            HotelUser hotelUser = _mapper.Map<HotelUser>(createHotelUserDto);
            hotelUser.UserName = hotelUser.RoomNumber;

            IdentityResult createUserResult = await _userManager.CreateAsync(hotelUser, createHotelUserDto.Password);

            if (!createUserResult.Succeeded)
            {
                response.Errors = createUserResult.Errors.Select(x => x.Description).ToList();
                return response;
            }

            IdentityResult roleResult = await _userManager.AddToRoleAsync(hotelUser, createHotelUserDto.Role);

            if (!roleResult.Succeeded)
            {
                response.Errors = createUserResult.Errors.Select(x => x.Description).ToList();
                return response;
            }

            response.IsValid = true;
            response.Data = new LoggedUserDto
            {
                RoomNumber = hotelUser.RoomNumber,
                GuestName = hotelUser.GuestName,
                Token = await _tokenService.CreateToken(hotelUser)
            };

            return response;
        }

        public async Task<ServiceResponse<LoggedUserDto>> LoginHotelUser(LoginHotelUserDto loginHotelUserDto)
        {
            ServiceResponse<LoggedUserDto> response = new();

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

        public async Task<ServiceResponse<bool>> DeleteHotelUser(string roomNumber)
        {
            ServiceResponse<bool> response = new();

            HotelUser user = _userManager.Users.FirstOrDefault(x => x.RoomNumber == roomNumber);

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
        #endregion
    }
}
