using SoleusHotelApi.DTOs.HotelUser;
using SoleusHotelApi.Entities;

namespace SoleusHotelApi.Data.Repositories.Contracts
{
    public interface IHotelUserRepository
    {
        Task<HotelUserDto> GetHotelUserDtoAsync(string roomNumber);
        Task<List<HotelUser>> GetAllUsers();
        Task<List<HotelUser>> GetAllGuests();
        void Update(HotelUser user);
        Task<bool> SaveAllAsync();
    }
}