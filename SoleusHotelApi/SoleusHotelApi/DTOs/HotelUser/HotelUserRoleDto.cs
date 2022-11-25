namespace SoleusHotelApi.DTOs.HotelUser
{
    public class HotelRoleDto
    {
        public int Id { get; set; }
        public string RoomNumber { get; set; }
        public IList<string> Roles { get; set; }
    }
}
