using SoleusHotelApi.Constants.ErrorMessages;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Extensions;
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
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, RoomServiceError.RoomNotFound);
            }

            room.CheckInDate = createHotelUserDto.CheckInDate;
            room.CheckOutDate = createHotelUserDto.CheckOutDate;

            _roomRepository.Update(room);

            if (!await _roomRepository.SaveAllAsync())
            {
                return response.GetFailedServiceResponse(StatusCodes.Status500InternalServerError, RoomServiceError.UnableToChangeDates + room.RoomNumber);
            }

            return response.GetValidServiceResponse(true);
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
                return response.GetFailedServiceResponse(StatusCodes.Status500InternalServerError, RoomServiceError.UnableToAddUser + room.RoomNumber);
            }

            return response.GetValidServiceResponse(true);
        }
    }
}
