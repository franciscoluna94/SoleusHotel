using SoleusHotelApi.DTOs.RoomRequestDtos;
using SoleusHotelApi.Models;

namespace SoleusHotelApi.Services.Contracts
{
    public interface IRoomRequestService
    {
        Task<ServiceResponse<bool>> CreateRoomRequest(CreateRoomRequestDto createRoomRequestDto, string roomNumber);
        Task<ServiceResponse<List<BaseRoomRequestDto>>> GetGuestRoomRequests(string roomNumber);
        Task<ServiceResponse<RoomRequestDto>> GetRoomRequest(int roomRequestId);
        Task<ServiceResponse<bool>> StartRoomRequest(int roomRequestId, List<string> userRoles, string userRoomNumber);
        Task<ServiceResponse<bool>> DeleteRoomRequest(int roomRequestId);
    }
}