namespace SoleusHotelApi.DTOs.HotelUserDtos
{
    public class HotelUserWithRolesDto
    {
        public string RoomNumber { get; set; }
        public string GuestName { get; set; }
        public ICollection<string> UserRoles { get; set; }
    }
}
