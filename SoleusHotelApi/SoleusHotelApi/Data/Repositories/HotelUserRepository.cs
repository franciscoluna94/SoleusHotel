using AutoMapper;
using AutoMapper.QueryableExtensions;
using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.Constants;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Entities;

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

        public async Task<HotelUserDto> GetHotelUserDtoAsync(string roomNumber)
        {
            return await _dataContext.Users
                .Include(r => r.Room)
                .Where(x => x.Room.RoomNumber == roomNumber)
                .OrderBy(x => x.Room.RoomNumber)
                .ProjectTo<HotelUserDto>(_mapper.ConfigurationProvider)
                .SingleOrDefaultAsync();
        }

        public async Task<List<HotelUser>> GetAllUsers()
        {
            return await _dataContext.Users.Include(r => r.Room).OrderByDescending(x => x.Room.RoomNumber.Length).ThenBy(x => x.Room.RoomNumber).ToListAsync();
        }

        public async Task<List<HotelUser>> GetAllGuests()
        {
            return await _dataContext.Users.Include(r => r.Room).Where(x => x.UserRoles.Any(x => x.Role.Name == Roles.Guest)).ToListAsync();
        }

        public void Update(HotelUser user)
        {
            _dataContext.Entry(user).State = EntityState.Modified;
        }

        public async Task<bool> SaveAllAsync()
        {
            return await _dataContext.SaveChangesAsync() > 0;
        }
    }
}
