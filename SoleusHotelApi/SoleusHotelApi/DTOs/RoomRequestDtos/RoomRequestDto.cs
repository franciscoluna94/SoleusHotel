using SoleusHotelApi.DTOs.PhotoDtos;

namespace SoleusHotelApi.DTOs.RoomRequestDtos
{
    public class RoomRequestDto : BaseRoomRequestDto
    {
        public ICollection<PhotoDto> Photos { get; set; }
    }
}
