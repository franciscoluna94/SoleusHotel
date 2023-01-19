using SoleusHotelApi.DTOs;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Models;

namespace SoleusHotelApi.Services.Contracts
{
    public interface IHotelUserService
    {
        Task<ServiceResponse<List<HotelUserWithRolesDto>>> GetHotelUsers();
        Task<ServiceResponse<HotelUserDto>> GetHotelUser(string roomNumber);
        Task<ServiceResponse<HotelUserWithRolesDto>> GetHotelUserWithRoles(string roomNumber);
        Task<ServiceResponse<List<HotelUserWithRequestsDto>>> GetHotelUserWithRequests();
        Task<ServiceResponse<CreatedHotelUserDto>> CreateHotelUser(CreateHotelUserDto createHotelUserDto);
        Task<ServiceResponse<LoggedUserDto>> LoginHotelUser(LoginHotelUserDto loginHotelUserDto);
        Task<ServiceResponse<CreatedHotelUserDto>> EditUser(CreateHotelUserDto editUser);
        Task<ServiceResponse<HotelUserDto>> EditGuestUser(HotelUserDto editUser);
        Task<ServiceResponse<LoggedUserDto>> ForgotPassword(HotelUserPasswordUpdatesDto userPasswordForgotDto, string userRoomNumber);
        Task<ServiceResponse<GenerateHotelUserPasswordDto>> GenerateUserPassword(string roomNumber);
        Task<ServiceResponse<bool>> ResetGuestsPasswords(string password);
        Task<ServiceResponse<List<HotelRoleDto>>> GetUsersWithRolesAsync();
        Task<ServiceResponse<bool>> DeleteHotelUser(string roomNumber);
    }
}