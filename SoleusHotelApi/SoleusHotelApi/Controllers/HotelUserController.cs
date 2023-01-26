using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SoleusHotelApi.Constants.SwaggerDescriptions;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.Extensions;
using SoleusHotelApi.Helpers;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;
using Swashbuckle.AspNetCore.Annotations;

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
        [SwaggerResponse(StatusCodes.Status200OK, HotelUserControllerDescriptions.Login200Ok, typeof(LoggedUserDto))]
        [SwaggerResponse(StatusCodes.Status400BadRequest, HotelUserControllerDescriptions.Login400BadRequest)]
        [HttpPost("login")]
        public async Task<ActionResult<LoggedUserDto>> Login([FromBody] LoginHotelUserDto loginHotelUserDto)
        {
            ServiceResponse<LoggedUserDto> serviceResponse = await _hotelUserService.LoginHotelUser(loginHotelUserDto);

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return Ok(serviceResponse.Data);
        }        

        [Authorize(Policy = "EmployeeLevel")]
        [HttpGet("rooms")]
        [SwaggerResponse(StatusCodes.Status200OK, HotelUserControllerDescriptions.GetHotelUsersWithRequestsNumber200Ok, typeof(PagedList<HotelUserWithRequestsDto>))]
        public async Task<ActionResult<PagedList<HotelUserWithRequestsDto>>> GetHotelUsersWithRequestsNumber([FromQuery] HotelUserParams hotelUserParams)
        {
            ServiceResponse<PagedList<HotelUserWithRequestsDto>> serviceResponse = await _hotelUserService.GetHotelUsersWithCreatedRoomRequests(hotelUserParams);

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            Response.AddPaginationHeader(serviceResponse.Data.CurrentPage, serviceResponse.Data.PageSize,
                serviceResponse.Data.TotalCount, serviceResponse.Data.TotalPages);

            return Ok(serviceResponse.Data);
        }

        [Authorize(Policy = "EmployeeLevel")]
        [HttpGet("{roomNumber}")]
        [SwaggerResponse(StatusCodes.Status200OK, HotelUserControllerDescriptions.GetHotel200Ok, typeof(HotelUserDto))]
        public async Task<ActionResult<HotelUserDto>> GetHotelUser(string roomNumber)
        {
            ServiceResponse<HotelUserDto> serviceResponse = await _hotelUserService.GetHotelUser(roomNumber);

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return Ok(serviceResponse.Data);
        }

        [Authorize(Policy = "ReceptionLevel")]
        [HttpPatch("rooms")]
        [SwaggerResponse(StatusCodes.Status200OK, HotelUserControllerDescriptions.EditGuest200Ok, typeof(HotelUserDto))]
        [SwaggerResponse(StatusCodes.Status403Forbidden, HotelUserControllerDescriptions.EditGuest403Forbidden)]
        [SwaggerResponse(StatusCodes.Status404NotFound, HotelUserControllerDescriptions.UserNotFound400BadRequest)]
        public async Task<ActionResult<HotelUserDto>> EditGuest([FromBody] HotelUserDto editUser)
        {
            ServiceResponse<HotelUserDto> serviceResponse = await _hotelUserService.EditGuestUser(editUser);

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return Ok(serviceResponse.Data);
        }

        [AllowAnonymous]
        [HttpPatch("passwords")]
        [SwaggerResponse(StatusCodes.Status200OK, HotelUserControllerDescriptions.ForgotPassword200Ok, typeof(LoggedUserDto))]
        [SwaggerResponse(StatusCodes.Status400BadRequest, HotelUserControllerDescriptions.ForgotPassword400BadRequest)]
        [SwaggerResponse(StatusCodes.Status403Forbidden, HotelUserControllerDescriptions.ForgotPassword403Fordbidden)]
        [SwaggerResponse(StatusCodes.Status404NotFound, HotelUserControllerDescriptions.UserNotFound400BadRequest)]
        public async Task<ActionResult<LoggedUserDto>> ForgotPassword([FromBody] HotelUserPasswordUpdatesDto passwordUpdate)
        {
            ServiceResponse<LoggedUserDto> serviceResponse = await _hotelUserService.ForgotPassword(passwordUpdate);

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return Ok(serviceResponse.Data);
        }

        [Authorize(Policy = "ReceptionLevel")]
        [HttpPatch("passwords/{roomNumber}")]
        [SwaggerResponse(StatusCodes.Status200OK, HotelUserControllerDescriptions.GenerateUserPassword200Ok, typeof(LoggedUserDto))]
        [SwaggerResponse(StatusCodes.Status403Forbidden, HotelUserControllerDescriptions.GenerateUserPassword403Forbidden)]
        [SwaggerResponse(StatusCodes.Status404NotFound, HotelUserControllerDescriptions.UserNotFound400BadRequest)]
        public async Task<ActionResult<GenerateHotelUserPasswordDto>> GenerateUserPassword(string roomNumber)
        {            
            ServiceResponse<GenerateHotelUserPasswordDto> serviceResponse = await _hotelUserService.GenerateUserPassword(roomNumber);

            if (!serviceResponse.IsValid)
            {
                return StatusCode(serviceResponse.StatusCode, serviceResponse.Errors);
            }

            return Ok(serviceResponse.Data);
        }
    }
}
