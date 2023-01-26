using AutoMapper;
using SoleusHotelApi.Constants;
using SoleusHotelApi.Constants.ErrorMessages;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.DTOs.RoomRequestDtos;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Enums;
using SoleusHotelApi.Extensions;
using SoleusHotelApi.Helpers;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;
using System.Net;

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
                response.StatusCode = (int)HttpStatusCode.NotFound;
                response.Errors.Add(RoomRequestServiceError.UserNotFound);
                return response;
            }

            RoomRequest request = _mapper.Map<RoomRequest>(createRoomRequestDto);

            request.RequestStatus = RoomRequestStatus.New;
            request.Room = user.Room;

            await _roomRequestRepository.AddRoomRequest(request);

            if (!await _roomRequestRepository.SaveAllAsync())
            {
                response.StatusCode = (int)HttpStatusCode.InternalServerError;
                response.Errors.Add(RoomRequestServiceError.UnableToSaveRequest);
                return response;
            }

            response.IsValid = true;
            return response;
        }

        public async Task<ServiceResponse<PagedList<BaseRoomRequestDto>>> GetFilteredRoomRequests(RoomRequestParams roomRequestFilter)
        {
            return new ServiceResponse<PagedList<BaseRoomRequestDto>>()
            {
                Data = await _roomRequestRepository.GetFilteredRoomRequests(roomRequestFilter),
                IsValid = true
            };
        }

        public async Task<ServiceResponse<PagedList<BaseRoomRequestDto>>> GetMyRoomRequests(string userRoomNumber, RoomRequestParams roomRequestFilter)
        {
            ServiceResponse<PagedList<BaseRoomRequestDto>> response = new();
            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                response.StatusCode = (int)HttpStatusCode.NotFound;
                response.Errors.Add(RoomRequestServiceError.UserNotFound);
                return response;
            }

            roomRequestFilter.Room = user.Room.RoomNumber;
            roomRequestFilter.MinRequestDate = user.Room.CheckInDate;
            roomRequestFilter.MaxRequestDate = user.Room.CheckOutDate;

            response.IsValid = true;
            response.Data = await _roomRequestRepository.GetFilteredRoomRequests(roomRequestFilter);
            return response;
        }

        public async Task<ServiceResponse<PagedList<BaseRoomRequestDto>>> GetMyAssignedRequests(string userRoomNumber, RoomRequestParams roomRequestFilter)
        {
            ServiceResponse<PagedList<BaseRoomRequestDto>> response = new();
            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                response.StatusCode = (int)HttpStatusCode.NotFound;
                response.Errors.Add(RoomRequestServiceError.UserNotFound);
                return response;
            }

            roomRequestFilter.AssignedTo = user.Room.RoomNumber;
            roomRequestFilter.RequestStatus = new List<int> { (int) RoomRequestStatus.InProgress, (int) RoomRequestStatus.Paused};

            response.IsValid = true;
            response.Data = await _roomRequestRepository.GetFilteredRoomRequests(roomRequestFilter);
            return response;
        }

        public async Task<ServiceResponse<RoomRequestDto>> GetRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles)
        {
            ServiceResponse<RoomRequestDto> response = new();

            RoomRequest roomRequest = await _roomRequestRepository.GetRoomRequestById(roomRequestId);

            if (roomRequest is null)
            {
                response.StatusCode = (int)HttpStatusCode.NotFound;
                response.Errors.Add(RoomRequestServiceError.RoomRequestNotFound);
                return response;
            }

            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                response.StatusCode = (int)HttpStatusCode.NotFound;
                response.Errors.Add(RoomRequestServiceError.UserNotFound);
                return response;
            }

            if (roomRequest.Room.RoomNumber != user.Room.RoomNumber && !CheckRole(userRoles, Roles.Employee.ToList()))
            {
                response.StatusCode = (int)HttpStatusCode.Forbidden;
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
                response.StatusCode = (int)HttpStatusCode.NotFound;
                response.Errors.Add(RoomRequestServiceError.RoomRequestNotFound);
                return response;
            }

            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                response.StatusCode = (int)HttpStatusCode.NotFound;
                response.Errors.Add(RoomRequestServiceError.UserNotFound);
                return response;
            }

            if (!CheckRole(userRoles, new List<string>() { roomRequest.Department }))
            {
                response.StatusCode = (int)HttpStatusCode.Forbidden;
                response.Errors.Add(RoomRequestServiceError.StartDifferentDepartmentRequest);
                return response;
            }

            if (roomRequest.RequestStatus != RoomRequestStatus.Paused && roomRequest.RequestStatus != RoomRequestStatus.New)
            {
                response.StatusCode = (int)HttpStatusCode.Conflict;
                response.Errors.Add(RoomRequestServiceError.UnableToInitiate);
                return response;
            }

            roomRequest.AssignedTo = user;
            roomRequest.RequestStatus = RoomRequestStatus.InProgress;
            roomRequest.DateStart = DateTime.Now;

            _roomRequestRepository.Update(roomRequest);

            if (!await _roomRequestRepository.SaveAllAsync())
            {
                response.StatusCode = (int)HttpStatusCode.InternalServerError;
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
                response.StatusCode = (int)HttpStatusCode.NotFound;
                response.Errors.Add(RoomRequestServiceError.RoomRequestNotFound);
                return response;
            }

            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                response.StatusCode = (int)HttpStatusCode.NotFound;
                response.Errors.Add(RoomRequestServiceError.UserNotFound);
                return response;
            }

            if (roomRequest.RequestStatus != RoomRequestStatus.InProgress)
            {
                response.StatusCode = (int)HttpStatusCode.Conflict;
                response.Errors.Add(RoomRequestServiceError.UnableToEnd);
                return response;
            }

            if (user.Id != roomRequest.AssignedTo.Id && !userRoles.Contains(Roles.Admin))
            {
                response.StatusCode = (int)HttpStatusCode.Forbidden;
                response.Errors.Add(RoomRequestServiceError.EndDifferentDepartmentRequest);
                return response;
            }

            roomRequest.RequestStatus = RoomRequestStatus.Ended;
            roomRequest.DateEnd = DateTime.Now;
            roomRequest.Duration = roomRequest.DateEnd - roomRequest.DateStart;

            _roomRequestRepository.Update(roomRequest);

            if (!await _roomRequestRepository.SaveAllAsync())
            {
                response.StatusCode = (int)HttpStatusCode.InternalServerError;
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
                response.StatusCode = (int)HttpStatusCode.NotFound;
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
                response.StatusCode = (int)HttpStatusCode.NotFound;
                response.Errors.Add(RoomRequestServiceError.RoomRequestNotFound);
                return response;
            }

            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                response.StatusCode = (int)HttpStatusCode.NotFound;
                response.Errors.Add(RoomRequestServiceError.UserNotFound);
                return response;
            }

            if (roomRequest.Room.RoomNumber != user.Room.RoomNumber && !CheckRole(userRoles, Roles.Employee.ToList()))
            {
                response.StatusCode = (int)HttpStatusCode.Forbidden;
                response.Errors.Add(RoomRequestServiceError.UnableToDeleteRequest);
                return response;
            }

            if (roomRequest.RequestStatus != RoomRequestStatus.New && !CheckRole(userRoles, new List<string> { Roles.Admin}))
            {
                response.StatusCode = (int)HttpStatusCode.Conflict;
                response.Errors.Add(RoomRequestServiceError.UnableToDeleteRequestStatus + roomRequest.RequestStatus.ToString());
                return response;
            }

            roomRequest.RequestStatus = RoomRequestStatus.Deleted;
            _roomRequestRepository.Update(roomRequest);

            if (!await _roomRequestRepository.SaveAllAsync())
            {
                response.StatusCode = (int)HttpStatusCode.InternalServerError;
                response.Errors.Add(RoomRequestServiceError.UnableToDeleteRequest);
                return response;
            }

            response.IsValid = response.Data = true;
            return response;
        }
        #endregion

        #region Private Methods
        private static bool CheckRole(List<string> userRoles, List<string> requiredRoles)
        {
            if (!userRoles.Any(role => requiredRoles.Contains(role)) && !userRoles.Any(role => Roles.Admin.Contains(role)))
            {
                return false;
            }

            return true;
        }
        #endregion
    }
}
