using SoleusHotelApi.DTOs.RoomRequestDtos;
using SoleusHotelApi.Entities;

namespace SoleusHotelApi.Data.Repositories.Contracts
{
    public interface IRoomRequestRepository
    {
        void AddRoomRequest(RoomRequest roomRequest);
        Task<List<BaseRoomRequestDto>> GetGuestRoomRequestsDtoByRoomNumber(string roomNumber);
        RoomRequest GetRoomRequestById(int id);
        RoomRequestDto GetRoomRequestDtoById(int id);
        void DeleteRoomRequestById(RoomRequest roomRequest);
        Task<bool> SaveAllAsync();

    }
}