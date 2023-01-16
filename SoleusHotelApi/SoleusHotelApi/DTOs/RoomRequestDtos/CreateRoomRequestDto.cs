using SoleusHotelApi.DTOs.PhotoDtos;
using System.ComponentModel.DataAnnotations;

namespace SoleusHotelApi.DTOs.RoomRequestDtos
{
    public class CreateRoomRequestDto
    {
        [Required]
        public string Department { get; set; }
        [Required]
        public string Topic { get; set; }
        [Required]
        [StringLength(40)]
        public string Subject { get; set; }
        [StringLength(280)]
        public string Description { get; set; }
        public ICollection<PhotoDto> Photos { get; set; }
    }
}
