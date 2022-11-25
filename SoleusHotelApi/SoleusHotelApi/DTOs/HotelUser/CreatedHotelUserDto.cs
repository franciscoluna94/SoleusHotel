namespace SoleusHotelApi.DTOs.HotelUser
{
    public class CreatedHotelUserDto
    {
        public string RoomNumber { get; set; }
        public string GuestName { get; set; }
        public DateTime CheckInDate { get; set; }
        public DateTime CheckOutDate { get; set; }
        public ICollection<string> UserRoles { get; set; }
    }
}
