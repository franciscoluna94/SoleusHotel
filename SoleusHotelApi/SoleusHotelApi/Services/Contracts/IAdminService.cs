using SoleusHotelApi.Models;

namespace SoleusHotelApi.Services.Contracts
{
    public interface IAdminService
    {
        Task<ServiceResponse<string>> InitialSetup();        
    }
}