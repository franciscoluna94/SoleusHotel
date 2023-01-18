using AutoMapper;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.Constants;
using SoleusHotelApi.Data.Repositories.Contracts;
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
            HotelUser user = await _userManager.Users.FirstOrDefaultAsync(x => x.Room.RoomNumber == roomNumber);

            if (user is null)
            {
                response.Errors.Add("User not found");
                return response;
            }

            RoomRequest request = _mapper.Map<RoomRequest>(createRoomRequestDto);

            request.RequestStatus = Enums.RoomRequestStatus.New;
            request.Room = null;

            _roomRequestRepository.AddRoomRequest(request);

            if (!await _roomRequestRepository.SaveAllAsync())
            {
                response.Errors.Add("Unable to save the request");
                return response;
            }

            response.IsValid = true;
            return response;
        }

        public async Task<ServiceResponse<List<BaseRoomRequestDto>>> GetGuestRoomRequests(string roomNumber)
        {
            ServiceResponse<List<BaseRoomRequestDto>> response = new();
            HotelUser user = await _userManager.Users.FirstOrDefaultAsync(x => x.Room.RoomNumber == roomNumber);

            if (user is null)
            {
                response.Errors.Add("User not found");
                return response;
            }

            response.IsValid = true;
            response.Data = await _roomRequestRepository.GetGuestRoomRequestsDtoByRoomNumber(roomNumber);
            return response;
        }

        public async Task<ServiceResponse<RoomRequestDto>> GetRoomRequest(int roomRequestId)
        {
            ServiceResponse<RoomRequestDto> response = new();

            RoomRequestDto roomRequest = _roomRequestRepository.GetRoomRequestDtoById(roomRequestId);

            if (roomRequest is null)
            {
                response.Errors.Add("This request doesn't exist");
                return response;
            }

            response.IsValid = true;
            response.Data = roomRequest;
            return response;
        }

        public async Task<ServiceResponse<bool>> StartRoomRequest(int roomRequestId, List<string> userRoles, string user)
        {
            ServiceResponse<bool> response = new();

            RoomRequest roomRequest = _roomRequestRepository.GetRoomRequestById(roomRequestId);

            if (roomRequest is null)
            {
                response.Errors.Add("This request doesn't exist");
                return response;
            }

            if (roomRequest.RequestStatus != Enums.RoomRequestStatus.Paused && roomRequest.RequestStatus != Enums.RoomRequestStatus.New)
            {
                response.Errors.Add("Unable to start a request that it is already in progress");
                return response;
            }

            if (!IsCorrectRole(userRoles, roomRequest.Department))
            {
                response.Errors.Add("Unable to start a request for another department");
                return response;
            }

            roomRequest.AssignedTo = await _userManager.Users.SingleAsync(r => r.Room.RoomNumber == user);
            roomRequest.RequestStatus = Enums.RoomRequestStatus.InProgress;

            if (!await _roomRequestRepository.SaveAllAsync())
            {
                response.Errors.Add("Unable to initiate the request");
                return response;
            }

            response.IsValid = response.Data = true;

            return response;
        }

        public async Task<ServiceResponse<bool>> DeleteRoomRequest(int roomRequestId)
        {
            ServiceResponse<bool> response = new();

            RoomRequest roomRequest = _roomRequestRepository.GetRoomRequestById(roomRequestId);

            if (roomRequest is null)
            {
                response.Errors.Add("This request doesn't exist");
                return response;
            }

            if (roomRequest.RequestStatus != Enums.RoomRequestStatus.New)
            {
                response.Errors.Add("Unable to delete a request in progress");
                return response;
            }

            roomRequest.RequestStatus = Enums.RoomRequestStatus.Deleted;

            if (!await _roomRequestRepository.SaveAllAsync())
            {
                response.Errors.Add("Unable to delete the request");
                return response;
            }

            response.IsValid = response.Data = true;
            return response;
        }        

        #region Private Methods
        private bool IsCorrectRole(List<string> userRoles, string department)
        {
            if (userRoles.Contains(department) || userRoles.Contains(Roles.Admin))
            {
                return true;
            }

            return false;
        }
        #endregion
    }
}
