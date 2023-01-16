using System.ComponentModel.DataAnnotations;

namespace SoleusHotelApi.DTOs.HotelUserDtos
{
    public class LoginHotelUserDto
    {
        [Required]
        public string RoomNumber { get; set; }
        [Required]
        public string Password { get; set; }
    }
}
