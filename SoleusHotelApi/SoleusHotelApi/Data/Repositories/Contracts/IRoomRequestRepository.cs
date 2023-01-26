using SoleusHotelApi.DTOs.RoomRequestDtos;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Helpers;

namespace SoleusHotelApi.Data.Repositories.Contracts
{
    public interface IRoomRequestRepository
    {
        Task AddRoomRequest(RoomRequest roomRequest);
        void Update(RoomRequest roomRequest);
        Task<PagedList<BaseRoomRequestDto>> GetFilteredRoomRequests(RoomRequestParams roomRequestParams);
        Task<RoomRequest> GetRoomRequestById(int id);
        Task<RoomRequestDto> GetRoomRequestDtoById(int id);
        Task<List<TimeSpan>> GetRoomRequestsDuration(HotelUser assignedUser);
        void DeleteRoomRequestById(RoomRequest roomRequest);
        Task<bool> SaveAllAsync();

    }
}