using AutoMapper;
using AutoMapper.QueryableExtensions;
using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.Constants;
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
            if (!string.IsNullOrEmpty(roomRequestParams.Room))
            {
                List<string> rooms = roomRequestParams.Room.Split(",").ToList();
                initialQuery = initialQuery.Where(r => rooms.Contains(r.Room.RoomNumber));
            }

            if (!string.IsNullOrEmpty(roomRequestParams.AssignedTo))
            {
                List<string> assignations = roomRequestParams.AssignedTo.Split(",").ToList();
                initialQuery = initialQuery.Where(r => assignations.Contains(r.AssignedTo.UserName));
            }

            if (!string.IsNullOrEmpty(roomRequestParams.Department))
            {
                List<string> departments = roomRequestParams.Department.Split(",").ToList();
                initialQuery = initialQuery.Where(r => departments.Contains(r.Department));
            }

            if (!string.IsNullOrEmpty(roomRequestParams.Topic))
            {
                List<string> topics = roomRequestParams.Topic.Split(",").ToList();
                initialQuery = initialQuery.Where(r => topics.Contains(r.Topic));
            }

            if (!string.IsNullOrEmpty(roomRequestParams.Subject))
            {
                List<string> subjects = roomRequestParams.Subject.Split(",").ToList();
                initialQuery = initialQuery.Where(r => subjects.Contains(r.Subject));
            }

            if (!string.IsNullOrEmpty(roomRequestParams.RequestStatus))
            {
                List<string> status = roomRequestParams.RequestStatus.Split(",").ToList();
                List<int> statusNumbers = status.ConvertAll(int.Parse);
                initialQuery = initialQuery.Where(s => statusNumbers.Contains((int)s.RequestStatus));
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

            initialQuery = OrderRoomRequests(initialQuery, roomRequestParams);

            return initialQuery;
        }

        private static IQueryable<RoomRequest> OrderRoomRequests(IQueryable<RoomRequest> initialQuery, RoomRequestParams roomRequestParams)
        {
            initialQuery = roomRequestParams.OrderBy switch
            {
                "id" => initialQuery.OrderBy(x => x.Id),
                "room" => initialQuery.OrderBy(x => x.Room.RoomNumber),
                "department" => initialQuery.OrderBy(x => x.Department),
                "topic" => initialQuery.OrderBy(x => x.Topic),
                "subject" => initialQuery.OrderBy(x => x.Subject),
                "date" => initialQuery.OrderBy(x => x.RequestDate),
                "assigned" => initialQuery.OrderBy(x => x.AssignedTo),
                _ => initialQuery.OrderByDescending(x => x.Room.RoomNumber.Length).ThenBy(x => x.Room.RoomNumber)
            };

            return initialQuery;
        }
        #endregion
    }
}
