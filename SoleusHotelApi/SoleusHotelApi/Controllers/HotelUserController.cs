using Microsoft.AspNetCore.Mvc;
using SoleusHotelApi.DTOs.HotelUser;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.Controllers
{
    public class HotelUserController : BaseApiController
    {
        private readonly IHotelUserService _hotelUserService;

        public HotelUserController(IHotelUserService hotelUserService)
        {
            _hotelUserService = hotelUserService;
        }

        [HttpPost("login")]
        public async Task<ActionResult<LoggedUserDto>> Login([FromBody] LoginHotelUserDto loginHotelUserDto)
        {
            ServiceResponse<LoggedUserDto> response = await _hotelUserService.LoginHotelUser(loginHotelUserDto);

            if (!response.IsValid)
            {
                return Unauthorized(response.Errors);
            }

            return Ok(response.Data);
        }
    }
}
