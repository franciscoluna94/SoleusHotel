namespace SoleusHotelApi.DTOs.Room
{
    public class Room
    {
        public string RoomNumber { get; set; }
        public string GuestName { get; set; }
        public DateTime CheckInDate { get; set; }
        public DateTime CheckOutDate { get; set; }
        public int RoomRequests { get; set;}
    }
}
