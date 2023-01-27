using SoleusHotelApi.Models;

namespace SoleusHotelApi.UnitTests.Helpers
{
    public static class GetServiceResponse<T>
    {
        public static ServiceResponse<T> GetServiceResponseIsValid()
        {
            return new ServiceResponse<T> { IsValid = true, Data = (T)Activator.CreateInstance(typeof(T)) };       
        }

        public static ServiceResponse<T> GetServiceResponseIsValidFalse()
        {
            return new ServiceResponse<T> { IsValid = false, Errors = { "Test error" }, StatusCode = 400 };
        }
    }
}
