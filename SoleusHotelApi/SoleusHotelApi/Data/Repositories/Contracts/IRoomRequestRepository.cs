using SoleusHotelApi.DTOs.RoomRequestDtos;
using SoleusHotelApi.Entities;

namespace SoleusHotelApi.Data.Repositories.Contracts
{
    public interface IRoomRequestRepository
    {
        Task AddRoomRequest(RoomRequest roomRequest);
        void Update(RoomRequest roomRequest);
        Task<List<BaseRoomRequestDto>> GetTodayRoomRequestsDto();
        Task<List<BaseRoomRequestDto>> GetGuestRoomRequestsDtoByRoomNumber(string roomNumber);
        Task<List<BaseRoomRequestDto>> GetRoomRequestsByAssigned(HotelUser assignedUser);
        Task<RoomRequest> GetRoomRequestById(int id);
        Task<RoomRequestDto> GetRoomRequestDtoById(int id);
        Task<List<TimeSpan>> GetRoomRequestsDuration(HotelUser assignedUser);
        void DeleteRoomRequestById(RoomRequest roomRequest);
        Task<bool> SaveAllAsync();

    }
}