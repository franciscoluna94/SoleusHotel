using SoleusHotelApi.DTOs;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Helpers;
using SoleusHotelApi.Models;

namespace SoleusHotelApi.Services.Contracts
{
    public interface IHotelUserService
    {
        Task<ServiceResponse<PagedList<HotelUserWithRolesDto>>> GetHotelUsers(HotelUserParams hotelUserParams);
        Task<ServiceResponse<PagedList<HotelUserWithRequestsDto>>> GetHotelUsersWithCreatedRoomRequests(HotelUserParams hotelUserParams);
        Task<ServiceResponse<HotelUserDto>> GetHotelUser(string roomNumber);
        Task<ServiceResponse<HotelUserWithRolesDto>> GetHotelUserWithRoles(string roomNumber);
        Task<ServiceResponse<CreatedHotelUserDto>> CreateHotelUser(CreateHotelUserDto createHotelUserDto);
        Task<ServiceResponse<CreatedHotelUserDto>> EditUser(CreateHotelUserDto editUser);
        Task<ServiceResponse<HotelUserDto>> EditGuestUser(HotelUserDto editUser);
        Task<ServiceResponse<LoggedUserDto>> LoginHotelUser(LoginHotelUserDto loginHotelUserDto);
        Task<ServiceResponse<LoggedUserDto>> ForgotPassword(HotelUserPasswordUpdatesDto userPasswordForgotDto);
        Task<ServiceResponse<GenerateHotelUserPasswordDto>> GenerateUserPassword(string roomNumber);
        Task<ServiceResponse<bool>> ResetGuestsPasswords(string password);
        Task<ServiceResponse<bool>> DeleteHotelUser(string roomNumber);
    }
}