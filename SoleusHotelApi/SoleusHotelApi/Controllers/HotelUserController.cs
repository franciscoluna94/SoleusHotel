using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Extensions;
using SoleusHotelApi.Helpers;
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

        [AllowAnonymous]
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

        [Authorize(Policy = "EmployeeLevel")]
        [HttpGet("rooms")]
        public async Task<ActionResult<List<HotelUserWithRequestsDto>>> GetHotelUsersWithRequestsNumber([FromQuery] HotelUserParams hotelUserParams)
        {
            ServiceResponse<PagedList<HotelUserWithRequestsDto>> serviceResponse = await _hotelUserService.GetHotelUsersWithCreatedRoomRequests(hotelUserParams);

            if (!serviceResponse.IsValid)
            {
                return BadRequest(serviceResponse.Errors);
            }

            Response.AddPaginationHeader(serviceResponse.Data.CurrentPage, serviceResponse.Data.PageSize,
                serviceResponse.Data.TotalCount, serviceResponse.Data.TotalPages);

            return Ok(serviceResponse.Data);
        }

        [Authorize(Policy = "EmployeeLevel")]
        [HttpGet("{roomNumber}")]
        public async Task<ActionResult<HotelUserDto>> GetHotelUser(string roomNumber)
        {
            ServiceResponse<HotelUserDto> response = await _hotelUserService.GetHotelUser(roomNumber);

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }

        [Authorize(Policy = "ReceptionLevel")]
        [HttpPatch("rooms")]
        public async Task<ActionResult<HotelUserDto>> EditGuests([FromBody] HotelUserDto editUser)
        {
            ServiceResponse<HotelUserDto> response = await _hotelUserService.EditGuestUser(editUser);

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }

        [AllowAnonymous]
        [HttpPatch("passwords")]
        public async Task<ActionResult<LoggedUserDto>> ForgotPassword([FromBody] HotelUserPasswordUpdatesDto passwordUpdate)
        {
            if (passwordUpdate is null)
            {
                return BadRequest();
            }

            ServiceResponse<LoggedUserDto> response = await _hotelUserService.ForgotPassword(passwordUpdate);

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }

        [Authorize(Policy = "ReceptionLevel")]
        [HttpPatch("passwords/{roomNumber}")]
        public async Task<ActionResult<GenerateHotelUserPasswordDto>> GenerateUserPassword(string roomNumber)
        {            
            ServiceResponse<GenerateHotelUserPasswordDto> response = await _hotelUserService.GenerateUserPassword(roomNumber);

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return Ok(response.Data);
        }
    }
}
