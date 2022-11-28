using AutoMapper;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.DTOs.Room;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.Services
{
    public class RoomService : IRoomService
    {
        private readonly IHotelUserRepository _userRepository;
        private readonly IMapper _mapper;

        public RoomService(IHotelUserRepository userRepository, IMapper mapper)
        {
            _userRepository = userRepository;
            _mapper = mapper;
        }

        public async Task<ServiceResponse<List<Room>>> GetRooms()
        {
            List<HotelUser> guests = await _userRepository.GetAllGuests();

            return new ServiceResponse<List<Room>>
            {
                IsValid = true,
                Data = _mapper.Map<List<Room>>(guests)
            };
        }
    }
}
