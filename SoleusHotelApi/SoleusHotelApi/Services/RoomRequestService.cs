using AutoMapper;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.DTOs.GuestRoomRequestDto;
using SoleusHotelApi.DTOs.RoomRequestDtos;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.Services
{
    public class RoomRequestService : IRoomRequestService
    {
        private readonly UserManager<HotelUser> _userManager;
        private readonly IRoomRequestRepository _roomRequestRepository;
        private readonly IMapper _mapper;

        public RoomRequestService(UserManager<HotelUser> userManager, IRoomRequestRepository roomRequestRepository, IMapper mapper)
        {
            _userManager = userManager;
            _roomRequestRepository = roomRequestRepository;
            _mapper = mapper;
        }

        public async Task<ServiceResponse<bool>> CreateRoomRequest(CreateRoomRequestDto createRoomRequestDto, string roomNumber)
        {
            ServiceResponse<bool> response = new();
            HotelUser user = await _userManager.Users.FirstOrDefaultAsync(x => x.RoomNumber == roomNumber);

            if (user is null)
            {
                response.Errors.Add("User not found");
                return response;
            }

            RoomRequest request = _mapper.Map<RoomRequest>(createRoomRequestDto);

            request.RequestStatus = Enums.RoomRequestStatus.New;
            request.Room = user;

            _roomRequestRepository.AddRoomRequest(request);

            if (!await _roomRequestRepository.SaveAllAsync())
            {
                response.Errors.Add("Unable to save the request");
                return response;
            }

            response.IsValid = true;
            return response;
        }

        public async Task<ServiceResponse<List<GuestRoomRequestDto>>> GetGuestRoomRequests(string roomNumber)
        {
            ServiceResponse<List<GuestRoomRequestDto>> response = new();
            HotelUser user = await _userManager.Users.FirstOrDefaultAsync(x => x.RoomNumber == roomNumber);

            if (user is null)
            {
                response.Errors.Add("User not found");
                return response;
            }

            response.IsValid = true;
            response.Data = await _roomRequestRepository.GetGuestRoomRequests(roomNumber);
            return response;
        }
    }
}
