using SoleusHotelApi.DTOs.HotelUser;
using SoleusHotelApi.Models;

namespace SoleusHotelApi.Services.Contracts
{
    public interface IAdminService
    {
        Task<ServiceResponse<string>> InitialSetup();
        Task<ServiceResponse<List<HotelUserRoleDto>>> GetUsersWithRolesAsync();
        Task<ServiceResponse<IList<string>>> EditUserRoles(string roomNumber, string roles);
    }
}