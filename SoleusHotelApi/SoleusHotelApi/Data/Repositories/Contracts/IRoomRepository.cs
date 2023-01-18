using SoleusHotelApi.Entities;

namespace SoleusHotelApi.Data.Repositories.Contracts
{
    public interface IRoomRepository
    {
        Task AddRoom(Room room);
        void Update(Room room);
        Task<Room> GetRoomByRoomNumber(string roomNumber);
        Task<bool> SaveAllAsync();
    }
}