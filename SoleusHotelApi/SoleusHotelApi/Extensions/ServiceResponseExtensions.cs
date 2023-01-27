using SoleusHotelApi.Models;

namespace SoleusHotelApi.Extensions
{
    public static class ServiceResponseExtensions
    {
        public static ServiceResponse<T> GetFailedServiceResponse<T>(this ServiceResponse<T> serviceResponse, int statusCode, string error)
        {
            serviceResponse.StatusCode = statusCode;
            serviceResponse.Errors.Add(error);
            return serviceResponse;
        }

        public static ServiceResponse<T> GetValidServiceResponse<T>(this ServiceResponse<T> serviceResponse, T data)
        {
            serviceResponse.IsValid = true;
            serviceResponse.Data = data;
            return serviceResponse;
        }
    }
}
