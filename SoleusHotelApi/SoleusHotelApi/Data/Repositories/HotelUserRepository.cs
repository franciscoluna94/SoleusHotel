using AutoMapper;
using AutoMapper.QueryableExtensions;
using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.Constants;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Helpers;

namespace SoleusHotelApi.Data.Repositories
{
    public class HotelUserRepository : IHotelUserRepository
    {
        private readonly DataContext _dataContext;
        private readonly IMapper _mapper;

        public HotelUserRepository(DataContext dataContext, IMapper mapper)
        {
            _dataContext = dataContext;
            _mapper = mapper;
        }

        public async Task<PagedList<HotelUserWithRolesDto>> GetAllHotelUsers(HotelUserParams hotelUserParams)
        {
            IQueryable<HotelUser> query = _dataContext.Users.Include(r => r.Room).AsQueryable();

            return await PagedList<HotelUserWithRolesDto>
                .CreateAsync(OrderHotelUsers(query, hotelUserParams).ProjectTo<HotelUserWithRolesDto>(_mapper.ConfigurationProvider).AsNoTracking(),
                hotelUserParams.PageNumber, hotelUserParams.PageSize);
        }

        public async Task<PagedList<HotelUserWithRequestsDto>> GetAllGuestsWithRoomRequests(HotelUserParams hotelUserParams)
        {
            IQueryable<HotelUser> query = _dataContext.Users.Include(r => r.Room).Where(x => x.UserRoles.Any(x => x.Role.Name == Roles.Guest)).AsQueryable();
          
            return await PagedList<HotelUserWithRequestsDto>
                .CreateAsync(OrderHotelUsers(query, hotelUserParams).ProjectTo<HotelUserWithRequestsDto>(_mapper.ConfigurationProvider).AsNoTracking(), 
                hotelUserParams.PageNumber, hotelUserParams.PageSize);
        }

        public async Task<HotelUserDto> GetHotelUserDtoAsync(string roomNumber)
        {
            return await _dataContext.Users
                .Include(r => r.Room)
                .Where(x => x.Room.RoomNumber == roomNumber)
                .OrderBy(x => x.Room.RoomNumber)
                .ProjectTo<HotelUserDto>(_mapper.ConfigurationProvider)
                .SingleOrDefaultAsync();
        }

        public async Task<List<HotelUser>> GetHotelUsersByRole(string role)
        {
            return await _dataContext.Users.Include(r => r.Room).Where(x => x.UserRoles.Any(x => x.Role.Name == role)).ToListAsync();
        }

        public async Task<HotelUser> GetHotelUserWithRoomByRoomNumber(string roomNumber)
        {
            return await _dataContext.Users.Include(r => r.Room).SingleOrDefaultAsync(x => x.Room.RoomNumber == roomNumber);
        }

        public void Update(HotelUser user)
        {
            _dataContext.Entry(user).State = EntityState.Modified;
        }

        public async Task<bool> SaveAllAsync()
        {
            return await _dataContext.SaveChangesAsync() > 0;
        }

        private static IQueryable<HotelUser> OrderHotelUsers(IQueryable<HotelUser> initialQuery, HotelUserParams hotelUserParams)
        {
            initialQuery = hotelUserParams.OrderBy switch
            {
                "checkin" => initialQuery.OrderByDescending(x => x.Room.CheckInDate),
                "checkout" => initialQuery.OrderByDescending(x => x.Room.CheckOutDate),
                "requests" => initialQuery.OrderByDescending(x => x.Room.RoomRequests.Count),
                "name" => initialQuery.OrderBy(x => x.GuestName),
                _ => initialQuery.OrderByDescending(x => x.Room.RoomNumber.Length).ThenBy(x => x.Room.RoomNumber)
            };

            return initialQuery;
        }
    }
}
