namespace SoleusHotelApi.DTOs.HotelUser
{
    public class HotelUserWithRequestsDto
    {
        public string RoomNumber { get; set; }
        public string GuestName { get; set; }
        public DateTime CheckInDate { get; set; }
        public DateTime CheckOutDate { get; set; }
        public int RoomRequests { get; set; }
    }
}
