using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.Services
{
    public class RoomService : IRoomService
    {
        private readonly IRoomRepository _roomRepository;

        public RoomService(IRoomRepository roomRepository)
        {
            _roomRepository = roomRepository;
        }
                
        public async Task<ServiceResponse<bool>> UpdateRoom(CreateHotelUserDto createHotelUserDto)
        {
            ServiceResponse<bool> response = new();
            Room room = await _roomRepository.GetRoomByRoomNumber(createHotelUserDto.RoomNumber);

            if (room is null)
            {
                response.Errors.Add("The room does'nt exist");
                return response;
            }

            room.CheckInDate = createHotelUserDto.CheckInDate;
            room.CheckOutDate = createHotelUserDto.CheckOutDate;

            _roomRepository.Update(room);

            if (!await _roomRepository.SaveAllAsync())
            {
                response.Errors.Add($"Unable to update the dates of the room {room.RoomNumber}");
                return response;
            }

            response.IsValid = response.Data = true;
            return response;
        }

        public async Task<ServiceResponse<bool>> AddUserToRoom(HotelUser user, CreateHotelUserDto createdHotelUserDto)
        {
            ServiceResponse<bool> response = new();

            Room room = await _roomRepository.GetRoomByRoomNumber(createdHotelUserDto.RoomNumber);

            if (room is null)
            {
                room = new Room()
                {
                    RoomNumber = createdHotelUserDto.RoomNumber,
                    CheckInDate = createdHotelUserDto.CheckInDate,
                    CheckOutDate = createdHotelUserDto.CheckOutDate
                };
                await _roomRepository.AddRoom(room);
            }

            room.UserId = user.Id;

            if (!await _roomRepository.SaveAllAsync())
            {
                response.Errors.Add($"Unable to add an user to the room {room.RoomNumber}");
                return response;
            }

            response.IsValid = response.Data = true;
            return response;
        }
    }
}
