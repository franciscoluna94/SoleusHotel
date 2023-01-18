using AutoMapper;
using AutoMapper.QueryableExtensions;
using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.DTOs.RoomRequestDtos;
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

        public async Task<List<BaseRoomRequestDto>> GetGuestRoomRequestsDtoByRoomNumber(string roomNumber)
        {
            return await _dataContext.RoomRequests
               .Where(r => r.Room.RoomNumber.Equals(roomNumber))
               .Where(d => d.RequestDate >= d.Room.CheckInDate && d.RequestDate <= d.Room.CheckOutDate)
               .Where(s => s.RequestStatus == Enums.RoomRequestStatus.New || s.RequestStatus == Enums.RoomRequestStatus.InProgress)
               .ProjectTo<BaseRoomRequestDto>(_mapper.ConfigurationProvider).ToListAsync();
        }

        public RoomRequest GetRoomRequestById(int id)
        {
            return _dataContext.RoomRequests.Include(r => r.Room).SingleOrDefault(r => r.Id == id);
        }

        public RoomRequestDto GetRoomRequestDtoById(int id)
        {
            return _mapper.Map<RoomRequestDto>(_dataContext.RoomRequests.Include(r => r.Room).SingleOrDefault(r => r.Id == id));
        }

        public void DeleteRoomRequestById(RoomRequest roomRequest)
        {
            _dataContext.RoomRequests.Remove(roomRequest);
        }

        public async Task<bool> SaveAllAsync()
        {
            return await _dataContext.SaveChangesAsync() > 0;
        }       
    }
}
