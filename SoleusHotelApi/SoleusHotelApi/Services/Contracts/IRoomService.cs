using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Entities;
using SoleusHotelApi.Models;

namespace SoleusHotelApi.Services.Contracts
{
    public interface IRoomService
    {
        Task<ServiceResponse<bool>> UpdateRoom(CreateHotelUserDto createHotelUserDto);
        Task<ServiceResponse<bool>> AddUserToRoom(HotelUser user, CreateHotelUserDto createdHotelUserDto);
    }
}