using SoleusHotelApi.DTOs.HotelUser;
using SoleusHotelApi.Models;

namespace SoleusHotelApi.Services.Contracts
{
    public interface IHotelUserService
    {
        Task<ServiceResponse<List<HotelUserDto>>> GetHotelUsers();
        Task<ServiceResponse<HotelUserDto>> GetHotelUser(string roomNumber);
        Task<ServiceResponse<CreatedHotelUserDto>> CreateHotelUser(CreateHotelUserDto createHotelUserDto);
        Task<ServiceResponse<LoggedUserDto>> LoginHotelUser(LoginHotelUserDto loginHotelUserDto);
        Task<ServiceResponse<CreatedHotelUserDto>> EditUser(CreateHotelUserDto editUser);
        Task<ServiceResponse<HotelUserDto>> EditGuestUser(HotelUserDto editUser);        
        Task<ServiceResponse<LoggedUserDto>> ForgotPassword(HotelUserPasswordUpdatesDto userPasswordForgotDto);
        Task<ServiceResponse<HotelUserPasswordUpdatesDto>> GenerateUserPassword(string roomNumber);
        Task<ServiceResponse<List<string>>> ResetGuestsPasswords(string password);
        Task<ServiceResponse<List<HotelRoleDto>>> GetUsersWithRolesAsync();
        Task<ServiceResponse<IList<string>>> EditUserRoles(string roomNumber, string roles);
        Task<ServiceResponse<bool>> DeleteHotelUser(string roomNumber);
    }
}