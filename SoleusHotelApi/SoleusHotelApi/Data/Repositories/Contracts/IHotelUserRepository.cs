using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Helpers;

namespace SoleusHotelApi.Data.Repositories.Contracts
{
    public interface IHotelUserRepository
    {
        Task<PagedList<HotelUserWithRolesDto>> GetAllHotelUsers(HotelUserParams hotelUserParams);
        Task<PagedList<HotelUserWithRequestsDto>> GetAllGuestsWithRoomRequests(HotelUserParams hotelUserParams);
        Task<List<HotelUser>> GetHotelUsersByRole(string role);
        Task<HotelUserDto> GetHotelUserDtoAsync(string roomNumber);
        Task<HotelUser> GetHotelUserWithRoomByRoomNumber(string roomNumber);        
        void Update(HotelUser user);
        Task<bool> SaveAllAsync();
    }
}