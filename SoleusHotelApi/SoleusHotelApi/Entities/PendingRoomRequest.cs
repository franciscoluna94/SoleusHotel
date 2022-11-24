using System.ComponentModel.DataAnnotations;

namespace SoleusHotelApi.Entities
{
    public class PendingRoomRequest
    {
        public int Id { get; set; }
        [Required]
        public HotelUser Room { get; set; }
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
        public DateTime DateStart { get; set; }
        [Required]
        public bool IsCompleted { get; set; } = false;
        public ICollection<Photo> Photos { get; set; }
    }
}
