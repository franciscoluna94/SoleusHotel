using SoleusHotelApi.DTOs.Room;
using SoleusHotelApi.Models;

namespace SoleusHotelApi.Services.Contracts
{
    public interface IRoomService
    {
        Task<ServiceResponse<List<Room>>> GetRooms();
    }
}