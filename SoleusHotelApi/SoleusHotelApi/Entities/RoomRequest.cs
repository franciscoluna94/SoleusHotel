using SoleusHotelApi.Enums;
using System.ComponentModel.DataAnnotations;

namespace SoleusHotelApi.Entities
{
    public class RoomRequest
    {
        public int Id { get; set; }
        [Required]
        public Room Room { get; set; }
        [Required]
        public string Department { get; set; }
        [Required]
        public string Topic { get; set; }
        [Required]
        [StringLength(40)]
        public string Subject { get; set; }
        [StringLength(280)]
        public string Description { get; set; }
        [Required]
        public DateTime RequestDate { get; set; } = DateTime.Now;
        [Required]
        public RoomRequestStatus RequestStatus { get; set; }
        public DateTime? DateStart { get; set; }
        public DateTime? DateEnd { get; set; } = null;
        public TimeSpan? Duration { get; set; } = null;
        public HotelUser AssignedTo { get; set; } = null;
        public ICollection<Photo> Photos { get; set; }
    }
}
