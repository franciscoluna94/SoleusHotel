﻿using AutoMapper;
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

        public async Task AddRoomRequest(RoomRequest roomRequest)
        {
            await _dataContext.RoomRequests.AddAsync(roomRequest);
        }

        public void Update(RoomRequest roomRequest)
        {
            _dataContext.Entry(roomRequest).State = EntityState.Modified;
        }

        public async Task<List<BaseRoomRequestDto>> GetTodayRoomRequestsDto()
        {
            return await _dataContext.RoomRequests
               .Where(d => d.RequestDate.Day == DateTime.Today.Day)
               .ProjectTo<BaseRoomRequestDto>(_mapper.ConfigurationProvider).ToListAsync();
        }

        public async Task<List<BaseRoomRequestDto>> GetGuestRoomRequestsDtoByRoomNumber(string roomNumber)
        {
            return await _dataContext.RoomRequests
               .Where(r => r.Room.RoomNumber.Equals(roomNumber))
               .Where(d => d.RequestDate >= d.Room.CheckInDate && d.RequestDate <= d.Room.CheckOutDate)
               .ProjectTo<BaseRoomRequestDto>(_mapper.ConfigurationProvider).ToListAsync();
        }

        public async Task<List<BaseRoomRequestDto>> GetRoomRequestsByAssigned(HotelUser assignedUser)
        {
            return await _dataContext.RoomRequests
               .Where(u => u.AssignedTo == assignedUser)
               .ProjectTo<BaseRoomRequestDto>(_mapper.ConfigurationProvider).ToListAsync();
        }

        public async Task<RoomRequest> GetRoomRequestById(int id)
        {
            return await _dataContext.RoomRequests.Include(r => r.Room).Include(u => u.AssignedTo).SingleOrDefaultAsync(r => r.Id == id);
        }

        public async Task<RoomRequestDto> GetRoomRequestDtoById(int id)
        {
            return _mapper.Map<RoomRequestDto>(await _dataContext.RoomRequests.Include(r => r.Room).SingleOrDefaultAsync(r => r.Id == id));
        }

        public async Task<List<TimeSpan>> GetRoomRequestsDuration(HotelUser assignedUser)
        {
            return await _dataContext.RoomRequests
                .Where(u => u.AssignedTo == assignedUser)
                .Where(s => s.RequestStatus == Enums.RoomRequestStatus.Ended)
                .Select(d => d.Duration.Value).ToListAsync();
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
