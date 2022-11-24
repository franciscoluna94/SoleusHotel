using SoleusHotelApi.Entities;

namespace SoleusHotelApi.Services.Contracts
{
    public interface ITokenService
    {
        Task<string> CreateToken(HotelUser user);
    }
}