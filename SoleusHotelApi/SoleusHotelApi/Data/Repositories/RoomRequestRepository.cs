using AutoMapper;
using AutoMapper.QueryableExtensions;
using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.DTOs.GuestRoomRequestDto;
using SoleusHotelApi.Entities;

namespace SoleusHotelApi.Data.Repositories
{
    public class RoomRequestRepository : IRoomRequestRepository
    {
        private readonly DataContext _dataContext;
        private readonly IMapper _mapper;

        public RoomRequestRepository(DataContext dataContext, IMapper mapper)
        {
            _dataContext = dataContext;
            _mapper = mapper;
        }

        public void AddRoomRequest(RoomRequest roomRequest)
        {
            _dataContext.RoomRequests.Add(roomRequest);
        }

        public async Task<List<GuestRoomRequestDto>> GetGuestRoomRequests(string roomNumber)
        {
            return await _dataContext.RoomRequests
                .Where(r => r.Room.RoomNumber.Equals(roomNumber))
                .Where(d => d.RequestDate >= d.Room.CheckInDate && d.RequestDate <= d.Room.CheckOutDate)
                .ProjectTo<GuestRoomRequestDto>(_mapper.ConfigurationProvider).ToListAsync();
        }

        public async Task<bool> SaveAllAsync()
        {
            return await _dataContext.SaveChangesAsync() > 0;
        }
    }
}
