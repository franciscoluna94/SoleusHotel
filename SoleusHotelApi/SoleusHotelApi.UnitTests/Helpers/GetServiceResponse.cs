using SoleusHotelApi.Models;

namespace SoleusHotelApi.UnitTests.Helpers
{
    public static class GetServiceResponse<T>
    {
        public static ServiceResponse<T> GetServiceResponseIsValid(T data)
        {
            return new ServiceResponse<T> { IsValid = true, Data = data };       
        }

        public static ServiceResponse<T> GetServiceResponseIsValidFalse()
        {
            return new ServiceResponse<T> { IsValid = false, Errors = { "Test error" }, StatusCode = 400};
        }
    }
}
