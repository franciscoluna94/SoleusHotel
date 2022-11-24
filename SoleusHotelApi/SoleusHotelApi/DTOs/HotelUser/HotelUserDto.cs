using SoleusHotelApi.Entities;

namespace SoleusHotelApi.DTOs.HotelUser
{
    public class HotelUserDto
    {
        public string RoomNumber { get; set; }
        public string GuestName { get; set; }
        public DateTime CheckInDate { get; set; }
        public DateTime CheckOutDate { get; set; }
        public ICollection<PendingRoomRequest> RoomRequests { get; set; }
        public ICollection<HotelUserRole> UserRoles { get; set; }
    }
}
