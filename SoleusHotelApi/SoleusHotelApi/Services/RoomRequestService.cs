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
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, RoomRequestServiceError.UserNotFound);
            }

            RoomRequest request = _mapper.Map<RoomRequest>(createRoomRequestDto);

            request.RequestStatus = RoomRequestStatus.New;
            request.Room = user.Room;

            await _roomRequestRepository.AddRoomRequest(request);

            if (!await _roomRequestRepository.SaveAllAsync())
            {
                return response.GetFailedServiceResponse(StatusCodes.Status500InternalServerError, RoomRequestServiceError.UnableToSaveRequest);
            }

            return response.GetValidServiceResponse(true);
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
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, RoomRequestServiceError.UserNotFound);
            }

            roomRequestFilter.Room = user.Room.RoomNumber;
            roomRequestFilter.MinRequestDate = user.Room.CheckInDate;
            roomRequestFilter.MaxRequestDate = user.Room.CheckOutDate;

            return response.GetValidServiceResponse(await _roomRequestRepository.GetFilteredRoomRequests(roomRequestFilter));
        }

        public async Task<ServiceResponse<PagedList<BaseRoomRequestDto>>> GetMyAssignedRequests(string userRoomNumber, RoomRequestParams roomRequestFilter)
        {
            ServiceResponse<PagedList<BaseRoomRequestDto>> response = new();
            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, RoomRequestServiceError.UserNotFound);
            }

            roomRequestFilter.AssignedTo = user.Room.RoomNumber;
            roomRequestFilter.RequestStatus = new List<int> { (int) RoomRequestStatus.InProgress, (int) RoomRequestStatus.Paused};

            return response.GetValidServiceResponse(await _roomRequestRepository.GetFilteredRoomRequests(roomRequestFilter));
        }

        public async Task<ServiceResponse<RoomRequestDto>> GetRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles)
        {
            ServiceResponse<RoomRequestDto> response = new();

            RoomRequest roomRequest = await _roomRequestRepository.GetRoomRequestById(roomRequestId);

            if (roomRequest is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, RoomRequestServiceError.RoomRequestNotFound);
            }

            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, RoomRequestServiceError.UserNotFound);
            }

            if (roomRequest.Room.RoomNumber != user.Room.RoomNumber && !CheckRole(userRoles, Roles.Employee.ToList()))
            {
                return response.GetFailedServiceResponse(StatusCodes.Status403Forbidden, RoomRequestServiceError.RoomRequestNotFound);
            }

            return response.GetValidServiceResponse(_mapper.Map<RoomRequestDto>(roomRequest));
        }

        public async Task<ServiceResponse<bool>> StartRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles)
        {
            ServiceResponse<bool> response = new();

            RoomRequest roomRequest = await _roomRequestRepository.GetRoomRequestById(roomRequestId);

            if (roomRequest is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, RoomRequestServiceError.RoomRequestNotFound);
            }

            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, RoomRequestServiceError.UserNotFound);
            }

            if (!CheckRole(userRoles, new List<string>() { roomRequest.Department }))
            {
                return response.GetFailedServiceResponse(StatusCodes.Status403Forbidden, RoomRequestServiceError.StartDifferentDepartmentRequest);
            }

            if (roomRequest.RequestStatus != RoomRequestStatus.Paused && roomRequest.RequestStatus != RoomRequestStatus.New)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status409Conflict, RoomRequestServiceError.UnableToInitiate);
            }

            roomRequest.AssignedTo = user;
            roomRequest.RequestStatus = RoomRequestStatus.InProgress;
            roomRequest.DateStart = DateTime.Now;

            _roomRequestRepository.Update(roomRequest);

            if (!await _roomRequestRepository.SaveAllAsync())
            {
                return response.GetFailedServiceResponse(StatusCodes.Status500InternalServerError, RoomRequestServiceError.UnableToInitiate);
            }

            return response.GetValidServiceResponse(true);
        }

        public async Task<ServiceResponse<bool>> EndRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles)
        {
            ServiceResponse<bool> response = new();

            RoomRequest roomRequest = await _roomRequestRepository.GetRoomRequestById(roomRequestId);

            if (roomRequest is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, RoomRequestServiceError.RoomRequestNotFound);
            }

            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, RoomRequestServiceError.UserNotFound);
            }

            if (roomRequest.RequestStatus != RoomRequestStatus.InProgress)
            {
                response.GetFailedServiceResponse(StatusCodes.Status409Conflict, RoomRequestServiceError.UnableToEnd);
                return response;
            }

            if (user.Id != roomRequest.AssignedTo.Id && !userRoles.Contains(Roles.Admin))
            {
                return response.GetFailedServiceResponse(StatusCodes.Status403Forbidden, RoomRequestServiceError.EndDifferentDepartmentRequest);
            }

            roomRequest.RequestStatus = RoomRequestStatus.Ended;
            roomRequest.DateEnd = DateTime.Now;
            roomRequest.Duration = roomRequest.DateEnd - roomRequest.DateStart;

            _roomRequestRepository.Update(roomRequest);

            if (!await _roomRequestRepository.SaveAllAsync())
            {
                return response.GetFailedServiceResponse(StatusCodes.Status500InternalServerError, RoomRequestServiceError.UnableToEnd);
            }

            return response.GetValidServiceResponse(true);
        }

        public async Task<ServiceResponse<TimeSpan>> AverageTimeAssignedRoomRequests(string userRoomNumber)
        {
            ServiceResponse<TimeSpan> response = new();

            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, RoomRequestServiceError.UserNotFound);
            }

            List<TimeSpan> durations = await _roomRequestRepository.GetRoomRequestsDuration(user);
            
            return response.GetValidServiceResponse(durations.Mean());
        }

        public async Task<ServiceResponse<bool>> SafeDeleteRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles)
        {
            ServiceResponse<bool> response = new();

            RoomRequest roomRequest = await _roomRequestRepository.GetRoomRequestById(roomRequestId);

            if (roomRequest is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, RoomRequestServiceError.RoomRequestNotFound);
            }

            HotelUser user = await _hotelUserRepository.GetHotelUserWithRoomByRoomNumber(userRoomNumber);

            if (user is null)
            {
                return response.GetFailedServiceResponse(StatusCodes.Status404NotFound, RoomRequestServiceError.UserNotFound);
            }

            if (roomRequest.Room.RoomNumber != user.Room.RoomNumber && !CheckRole(userRoles, Roles.Employee.ToList()))
            {
                return response.GetFailedServiceResponse(StatusCodes.Status403Forbidden, RoomRequestServiceError.UnableToDeleteRequest);
            }

            if (roomRequest.RequestStatus != RoomRequestStatus.New && !CheckRole(userRoles, new List<string> { Roles.Admin}))
            {
                return response.GetFailedServiceResponse(StatusCodes.Status409Conflict, 
                    RoomRequestServiceError.UnableToDeleteRequestStatus + roomRequest.RequestStatus.ToString());
            }

            roomRequest.RequestStatus = RoomRequestStatus.Deleted;
            _roomRequestRepository.Update(roomRequest);

            if (!await _roomRequestRepository.SaveAllAsync())
            {
                return response.GetFailedServiceResponse(StatusCodes.Status500InternalServerError, RoomRequestServiceError.UnableToDeleteRequest);
            }

            return response.GetValidServiceResponse(true);
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
