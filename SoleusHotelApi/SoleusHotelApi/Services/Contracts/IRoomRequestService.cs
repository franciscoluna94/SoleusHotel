using SoleusHotelApi.DTOs.RoomRequestDtos;
using SoleusHotelApi.Models;

namespace SoleusHotelApi.Services.Contracts
{
    public interface IRoomRequestService
    {
        Task<ServiceResponse<bool>> CreateRoomRequest(CreateRoomRequestDto createRoomRequestDto, string userRoomNumber);
        Task<ServiceResponse<List<BaseRoomRequestDto>>> GetTodayRoomRequests();
        Task<ServiceResponse<List<BaseRoomRequestDto>>> GetMyRoomRequests(string userRoomNumber);
        Task<ServiceResponse<List<BaseRoomRequestDto>>> GetMyAssignedRequests(string userRoomNumber);
        Task<ServiceResponse<RoomRequestDto>> GetRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles);
        Task<ServiceResponse<bool>> StartRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles);
        Task<ServiceResponse<bool>> EndRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles);
        Task<ServiceResponse<TimeSpan>> AverageTimeAssignedRoomRequests(string userRoomNumber);
        Task<ServiceResponse<bool>> SafeDeleteRoomRequest(int roomRequestId, string userRoomNumber, List<string> userRoles);
    }
}