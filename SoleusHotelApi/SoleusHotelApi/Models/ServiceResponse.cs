namespace SoleusHotelApi.Models
{
    public class ServiceResponse<T>
    {
        public bool IsValid { get; set; }
        public int StatusCode { get; set; }
        public List<string> Errors { get; set; } = new List<string>();
        public T Data { get; set; }
    }
}
