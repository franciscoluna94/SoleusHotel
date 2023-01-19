using AutoMapper;
using SoleusHotelApi.Constants;
using SoleusHotelApi.Constants.ErrorMessages;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.DTOs.RoomRequestDtos;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Enums;
using SoleusHotelApi.Extensions;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.Services
{
    public class RoomRequestService : IRoomRequestService
    {
        private readonly IHotelUserRepository _hotelUserRepository;
        private readonly IRoomRequestRepository _roomRequestRepository;
        private readonly IMapper _mapper;

        public RoomRequestService(IHotelUserRepository hotelUserRepository, IRoomRequestRepository roomRequestRepository, IMapper mapper)
        {
            _hotelUserRepository = hotelUserRepository;
            _roomRequestRepository = roomRequestRepository;
            _mapper = mapper;
        }

        #region Public Methods
        public async Task<ServiceResponse<bool>> CreateRoomRequest(CreateRoomRequestDto createRoomRequestDto, string userRoomNumber)
        {
            ServiceResponse<bool> response = new();
            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                response.Errors.Add(RoomRequestServiceError.UserNotFound);
                return response;
            }

            RoomRequest request = _mapper.Map<RoomRequest>(createRoomRequestDto);

            request.RequestStatus = Enums.RoomRequestStatus.New;
            request.Room = user.Room;

            await _roomRequestRepository.AddRoomRequest(request);

            if (!await _roomRequestRepository.SaveAllAsync())
            {
                response.Errors.Add(RoomRequestServiceError.UnableToSaveRequest);
                return response;
            }

            response.IsValid = true;
            return response;
        }

        public async Task<ServiceResponse<List<BaseRoomRequestDto>>> GetTodayRoomRequests()
        {
            return new ServiceResponse<List<BaseRoomRequestDto>>()
            {
                Data = await _roomRequestRepository.GetTodayRoomRequestsDto(),
                IsValid = true
            };
        }

        public async Task<ServiceResponse<List<BaseRoomRequestDto>>> GetMyRoomRequests(string userRoomNumber)
        {
            ServiceResponse<List<BaseRoomRequestDto>> response = new();
            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                response.Errors.Add(RoomRequestServiceError.UserNotFound);
                return response;
            }

            response.IsValid = true;
            response.Data = await _roomRequestRepository.GetGuestRoomRequestsDtoByRoomNumber(user.Room.RoomNumber);
            return response;
        }

        public async Task<ServiceResponse<List<BaseRoomRequestDto>>> GetMyAssignedRequests(string userRoomNumber)
        {
            ServiceResponse<List<BaseRoomRequestDto>> response = new();
            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                response.Errors.Add(RoomRequestServiceError.UserNotFound);
                return response;
            }

            response.IsValid = true;
            response.Data = await _roomRequestRepository.GetRoomRequestsByAssigned(user);
            return response;
        }

        public async Task<ServiceResponse<RoomRequestDto>> GetRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles)
        {
            ServiceResponse<RoomRequestDto> response = new();

            RoomRequest roomRequest = await _roomRequestRepository.GetRoomRequestById(roomRequestId);

            if (roomRequest is null)
            {
                response.Errors.Add(RoomRequestServiceError.RoomRequestNotFound);
                return response;
            }

            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                response.Errors.Add(RoomRequestServiceError.UserNotFound);
                return response;
            }

            if (roomRequest.Room.RoomNumber != user.Room.RoomNumber && !IsEmployee(userRoles))
            {
                response.Errors.Add(RoomRequestServiceError.RoomRequestNotFound);
                return response;
            }

            response.IsValid = true;
            response.Data = _mapper.Map<RoomRequestDto>(roomRequest);
            return response;
        }

        public async Task<ServiceResponse<bool>> StartRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles)
        {
            ServiceResponse<bool> response = new();

            RoomRequest roomRequest = await _roomRequestRepository.GetRoomRequestById(roomRequestId);

            if (roomRequest is null)
            {
                response.Errors.Add(RoomRequestServiceError.RoomRequestNotFound);
                return response;
            }

            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                response.Errors.Add(RoomRequestServiceError.UserNotFound);
                return response;
            }

            if (!IsCorrectRole(userRoles, roomRequest.Department))
            {
                response.Errors.Add(RoomRequestServiceError.StartDifferentDepartmentRequest);
                return response;
            }

            if (roomRequest.RequestStatus != RoomRequestStatus.Paused && roomRequest.RequestStatus != RoomRequestStatus.New)
            {
                response.Errors.Add(RoomRequestServiceError.UnableToInitiate);
                return response;
            }

            roomRequest.AssignedTo = user;
            roomRequest.RequestStatus = RoomRequestStatus.InProgress;
            roomRequest.DateStart = DateTime.Now;

            _roomRequestRepository.Update(roomRequest);

            if (!await _roomRequestRepository.SaveAllAsync())
            {
                response.Errors.Add(RoomRequestServiceError.UnableToInitiate);
                return response;
            }

            response.IsValid = response.Data = true;

            return response;
        }

        public async Task<ServiceResponse<bool>> EndRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles)
        {
            ServiceResponse<bool> response = new();

            RoomRequest roomRequest = await _roomRequestRepository.GetRoomRequestById(roomRequestId);

            if (roomRequest is null)
            {
                response.Errors.Add(RoomRequestServiceError.RoomRequestNotFound);
                return response;
            }

            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                response.Errors.Add(RoomRequestServiceError.UserNotFound);
                return response;
            }

            if (user.Id != roomRequest.AssignedTo.Id && !userRoles.Contains(Roles.Admin))
            {
                response.Errors.Add(RoomRequestServiceError.EndDifferentDepartmentRequest);
                return response;
            }

            if (roomRequest.RequestStatus != RoomRequestStatus.InProgress)
            {
                response.Errors.Add(RoomRequestServiceError.UnableToEnd);
                return response;
            }

            roomRequest.RequestStatus = RoomRequestStatus.Ended;
            roomRequest.DateEnd = DateTime.Now;
            roomRequest.Duration = roomRequest.DateEnd - roomRequest.DateStart;

            _roomRequestRepository.Update(roomRequest);

            if (!await _roomRequestRepository.SaveAllAsync())
            {
                response.Errors.Add(RoomRequestServiceError.UnableToEnd);
                return response;
            }

            response.IsValid = response.Data = true;

            return response;
        }

        public async Task<ServiceResponse<TimeSpan>> AverageTimeAssignedRoomRequests(string userRoomNumber)
        {
            ServiceResponse<TimeSpan> response = new();

            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                response.Errors.Add(RoomRequestServiceError.UserNotFound);
                return response;
            }

            List<TimeSpan> durations = await _roomRequestRepository.GetRoomRequestsDuration(user);
            
            response.IsValid = true;
            response.Data = durations.Mean();
            return response;
        }

        public async Task<ServiceResponse<bool>> SafeDeleteRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles)
        {
            ServiceResponse<bool> response = new();

            RoomRequest roomRequest = await _roomRequestRepository.GetRoomRequestById(roomRequestId);

            if (roomRequest is null)
            {
                response.Errors.Add(RoomRequestServiceError.RoomRequestNotFound);
                return response;
            }

            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                response.Errors.Add(RoomRequestServiceError.UserNotFound);
                return response;
            }

            if (roomRequest.Room.RoomNumber != user.Room.RoomNumber && !IsEmployee(userRoles))
            {
                response.Errors.Add(RoomRequestServiceError.UnableToDeleteRequest);
                return response;
            }

            if (roomRequest.RequestStatus != RoomRequestStatus.New && !IsAdmin(userRoles))
            {
                response.Errors.Add(RoomRequestServiceError.UnableToDeleteRequestStatus + roomRequest.RequestStatus.ToString());
                return response;
            }

            roomRequest.RequestStatus = RoomRequestStatus.Deleted;
            _roomRequestRepository.Update(roomRequest);

            if (!await _roomRequestRepository.SaveAllAsync())
            {
                response.Errors.Add(RoomRequestServiceError.UnableToDeleteRequest);
                return response;
            }

            response.IsValid = response.Data = true;
            return response;
        }
        #endregion

        #region Private Methods
        private static bool IsCorrectRole(List<string> userRoles, string department)
        {
            if (userRoles.Contains(department) || userRoles.Contains(Roles.Admin))
            {
                return true;
            }

            return false;
        }

        private static bool IsEmployee(List<string> userRoles)
        {
            return userRoles.Any(role => Roles.Employee.Contains(role));
        }

        private static bool IsAdmin(List<string> userRoles)
        {
            return userRoles.FirstOrDefault(r => r.Contains(Roles.Admin)) != null;
        }
        #endregion
    }
}
