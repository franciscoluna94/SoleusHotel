using SoleusHotelApi.Enums;

namespace SoleusHotelApi.Helpers
{
    public class RoomRequestParams : PaginationParams
    {
        public RoomRequestStatus RoomRequestStatus { get; set; }
        public string Room { get; set; }
        public string Department { get; set; }
        public string Topic { get; set; }
        public string Subject { get; set; }
        public DateTime RequestDate { get; set; }
}
}
