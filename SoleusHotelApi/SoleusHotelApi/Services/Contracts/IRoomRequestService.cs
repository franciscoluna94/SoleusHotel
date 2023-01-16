using SoleusHotelApi.DTOs.GuestRoomRequestDto;
using SoleusHotelApi.DTOs.RoomRequestDtos;
using SoleusHotelApi.Models;

namespace SoleusHotelApi.Services.Contracts
{
    public interface IRoomRequestService
    {
        Task<ServiceResponse<bool>> CreateRoomRequest(CreateRoomRequestDto createRoomRequestDto, string roomNumber);
        Task<ServiceResponse<List<GuestRoomRequestDto>>> GetGuestRoomRequests(string roomNumber);
    }
}