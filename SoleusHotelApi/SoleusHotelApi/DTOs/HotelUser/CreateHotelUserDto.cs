using System.ComponentModel.DataAnnotations;

namespace SoleusHotelApi.DTOs.HotelUser
{
    public class CreateHotelUserDto
    {
        [Required]
        public string RoomNumber { get; set; }
        [StringLength(40)]
        public string GuestName { get; set; }
        [Required]
        public string Role { get; set; }
        [Required]
        public DateTime CheckInDate { get; set; }
        [Required]
        public DateTime CheckOutDate { get; set; }
        [Required]
        [StringLength(8, MinimumLength = 4)]
        public string Password { get; set; }
    }
}
