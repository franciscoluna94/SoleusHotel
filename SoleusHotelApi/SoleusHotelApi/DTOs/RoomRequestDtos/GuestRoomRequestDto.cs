using SoleusHotelApi.Enums;

namespace SoleusHotelApi.DTOs.GuestRoomRequestDto
{
    public class GuestRoomRequestDto
    {
        public string Room { get; set; }
        public string Department { get; set; }
        public string Topic { get; set; }
        public string Subject { get; set; }
        public string Description { get; set; }
        public DateTime RequestDate { get; set; }
        public RoomRequestStatus RequestStatus { get; set; }
        public DateTime? DateStart { get; set; }
        public DateTime? DateEnd { get; set; }
    }
}
