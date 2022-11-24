using SoleusHotelApi.DTOs.HotelUser;
using SoleusHotelApi.Models;

namespace SoleusHotelApi.Services.Contracts
{
    public interface IHotelUserService
    {
        Task<ServiceResponse<LoggedUserDto>> CreateHotelUser(CreateHotelUserDto createHotelUserDto);
        Task<ServiceResponse<LoggedUserDto>> LoginHotelUser(LoginHotelUserDto loginHotelUserDto);
        Task<ServiceResponse<bool>> DeleteHotelUser(string roomNumber);
    }
}