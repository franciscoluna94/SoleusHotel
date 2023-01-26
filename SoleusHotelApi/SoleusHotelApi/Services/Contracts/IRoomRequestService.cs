using SoleusHotelApi.DTOs.RoomRequestDtos;
using SoleusHotelApi.Helpers;
using SoleusHotelApi.Models;

namespace SoleusHotelApi.Services.Contracts
{
    public interface IRoomRequestService
    {
        Task<ServiceResponse<bool>> CreateRoomRequest(CreateRoomRequestDto createRoomRequestDto, string userRoomNumber);
        Task<ServiceResponse<PagedList<BaseRoomRequestDto>>> GetFilteredRoomRequests(RoomRequestParams roomRequestFilter);
        Task<ServiceResponse<PagedList<BaseRoomRequestDto>>> GetMyRoomRequests(string userRoomNumber, RoomRequestParams roomRequestFilter);
        Task<ServiceResponse<PagedList<BaseRoomRequestDto>>> GetMyAssignedRequests(string userRoomNumber, RoomRequestParams roomRequestFilter);
        Task<ServiceResponse<RoomRequestDto>> GetRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles);
        Task<ServiceResponse<bool>> StartRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles);
        Task<ServiceResponse<bool>> EndRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles);
        Task<ServiceResponse<TimeSpan>> AverageTimeAssignedRoomRequests(string userRoomNumber);
        Task<ServiceResponse<bool>> SafeDeleteRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles);
    }
}