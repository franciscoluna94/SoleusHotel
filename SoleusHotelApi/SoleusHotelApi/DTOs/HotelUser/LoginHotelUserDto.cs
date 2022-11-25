using System.ComponentModel.DataAnnotations;

namespace SoleusHotelApi.DTOs.HotelUser
{
    public class LoginHotelUserDto
    {
        [Required]
        public string RoomNumber { get; set; }
        [Required]
        public string Password { get; set; }
    }
}
