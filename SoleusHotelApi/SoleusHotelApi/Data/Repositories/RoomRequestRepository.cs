using AutoMapper;
using AutoMapper.QueryableExtensions;
using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.DTOs.RoomRequestDtos;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Helpers;

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

        #region Public Methods
        public async Task AddRoomRequest(RoomRequest roomRequest)
        {
            await _dataContext.RoomRequests.AddAsync(roomRequest);
        }

        public void Update(RoomRequest roomRequest)
        {
            _dataContext.Entry(roomRequest).State = EntityState.Modified;
        }

        public async Task<PagedList<BaseRoomRequestDto>> GetFilteredRoomRequests(RoomRequestParams roomRequestParams)
        {
            IQueryable<RoomRequest> query = _dataContext.RoomRequests
                .Include(r => r.Room).ThenInclude(u => u.User).AsQueryable();
            
            return await PagedList<BaseRoomRequestDto>.CreateAsync(FilterRoomRequests(query, roomRequestParams).ProjectTo<BaseRoomRequestDto>(_mapper.ConfigurationProvider).AsNoTracking(),
                roomRequestParams.PageNumber, roomRequestParams.PageSize);
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
        #endregion

        #region Private Methods
        private static IQueryable<RoomRequest> FilterRoomRequests(IQueryable<RoomRequest> initialQuery, RoomRequestParams roomRequestParams)
        {
            if (roomRequestParams.Room is not null)
            {
                initialQuery = initialQuery.Where(r => r.Room.RoomNumber == roomRequestParams.Room);
            }

            if (roomRequestParams.AssignedTo is not null)
            {
                initialQuery = initialQuery.Where(r => r.AssignedTo.Room.RoomNumber == roomRequestParams.AssignedTo);
            }

            if (roomRequestParams.MinRequestDate is not null)
            {
                initialQuery = initialQuery.Where(r => r.RequestDate >= roomRequestParams.MinRequestDate);
            }

            if (roomRequestParams.MaxRequestDate is not null)
            {
                initialQuery = initialQuery.Where(r => r.RequestDate <= roomRequestParams.MaxRequestDate.Value);
            }

            if (roomRequestParams.MinDateStart is not null)
            {
                initialQuery = initialQuery.Where(r => r.DateStart >= roomRequestParams.MinDateStart);
            }

            if (roomRequestParams.MaxDateStart is not null)
            {
                initialQuery = initialQuery.Where(r => r.DateStart <= roomRequestParams.MaxDateStart);
            }

            if (roomRequestParams.MinDateEnd is not null)
            {
                initialQuery = initialQuery.Where(r => r.DateEnd >= roomRequestParams.MinDateEnd);
            }

            if (roomRequestParams.MaxDateEnd is not null)
            {
                initialQuery = initialQuery.Where(r => r.DateEnd <= roomRequestParams.MaxDateEnd);
            }

            if (roomRequestParams.Department is not null)
            {
                initialQuery = initialQuery.Where(r => r.Department == roomRequestParams.Department);
            }

            if (roomRequestParams.Topic is not null)
            {
                initialQuery = initialQuery.Where(r => r.Topic == roomRequestParams.Topic);
            }

            if (roomRequestParams.Subject is not null)
            {
                initialQuery = initialQuery.Where(r => r.Subject == roomRequestParams.Subject);
            }

            if (roomRequestParams.RequestStatus is not null)
            {                
                initialQuery = initialQuery.Where(s => roomRequestParams.RequestStatus.Contains((int) s.RequestStatus));
            }

            initialQuery = OrderRoomRequests(initialQuery, roomRequestParams);

            return initialQuery;
        }

        private static IQueryable<RoomRequest> OrderRoomRequests(IQueryable<RoomRequest> initialQuery, RoomRequestParams roomRequestParams)
        {            
            initialQuery = roomRequestParams.OrderBy switch
            {
                "date" => initialQuery.OrderByDescending(x => x.RequestDate),
                "department" => initialQuery.OrderByDescending(x => x.Department),
                "assigned" => initialQuery.OrderBy(x => x.AssignedTo),
                _ => initialQuery.OrderByDescending(x => x.Room.RoomNumber.Length).ThenBy(x => x.Room.RoomNumber)
            };

            return initialQuery;
        }
        #endregion
    }
}
