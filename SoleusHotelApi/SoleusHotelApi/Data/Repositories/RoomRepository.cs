using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.Entities;

namespace SoleusHotelApi.Data.Repositories
{
    public class RoomRepository : IRoomRepository
    {
        private readonly DataContext _dataContext;

        public RoomRepository(DataContext dataContext)
        {
            _dataContext = dataContext;
        }

        public async Task AddRoom(Room room)
        {
            await _dataContext.Rooms.AddAsync(room);
        }

        public void Update(Room room)
        {
            _dataContext.Entry(room).State = EntityState.Modified;
        }

        public async Task<Room> GetRoomByRoomNumber(string roomNumber)
        {
            return await _dataContext.Rooms.SingleOrDefaultAsync(r => r.RoomNumber == roomNumber);
        }

        public async Task<bool> RoomUserExists(int id)
        {
            return await _dataContext.Rooms.AnyAsync(r => r.User.Id == id);
        }

        public async Task<bool> SaveAllAsync()
        {
            return await _dataContext.SaveChangesAsync() > 0;
        }
    }
}
