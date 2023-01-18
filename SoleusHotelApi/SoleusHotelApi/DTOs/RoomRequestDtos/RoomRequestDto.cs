using SoleusHotelApi.DTOs.PhotoDtos;

namespace SoleusHotelApi.DTOs.RoomRequestDtos
{
    public class RoomRequestDto : BaseRoomRequestDto
    {
        public DateTime DateStart { get; set; }
        public DateTime DateEnd { get; set; }
        public ICollection<PhotoDto> Photos { get; set; }
    }
}
