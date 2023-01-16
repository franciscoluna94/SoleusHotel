using SoleusHotelApi.DTOs.GuestRoomRequestDto;
using SoleusHotelApi.Entities;

namespace SoleusHotelApi.Data.Repositories.Contracts
{
    public interface IRoomRequestRepository
    {
        void AddRoomRequest(RoomRequest roomRequest);
        Task<List<GuestRoomRequestDto>> GetGuestRoomRequests(string roomNumber);
        Task<bool> SaveAllAsync();

    }
}