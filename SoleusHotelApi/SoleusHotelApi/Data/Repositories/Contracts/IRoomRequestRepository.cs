using SoleusHotelApi.DTOs.RoomRequestDtos;
using SoleusHotelApi.Entities;

namespace SoleusHotelApi.Data.Repositories.Contracts
{
    public interface IRoomRequestRepository
    {
        Task AddRoomRequest(RoomRequest roomRequest);
        void Update(RoomRequest roomRequest);
        Task<List<BaseRoomRequestDto>> GetGuestRoomRequestsDtoByRoomNumber(string roomNumber);
        Task<RoomRequest> GetRoomRequestById(int id);
        Task<RoomRequestDto> GetRoomRequestDtoById(int id);
        void DeleteRoomRequestById(RoomRequest roomRequest);
        Task<bool> SaveAllAsync();

    }
}