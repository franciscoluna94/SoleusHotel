using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SoleusHotelApi.DTOs.GuestRoomRequestDto;
using SoleusHotelApi.DTOs.RoomRequestDtos;
using SoleusHotelApi.Extensions;
using SoleusHotelApi.Models;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.Controllers
{
    public class RoomRequestController : BaseApiController
    {
        private readonly IRoomRequestService _roomRequestService;

        public RoomRequestController(IRoomRequestService roomRequestService)
        {
            _roomRequestService = roomRequestService;
        }

        [HttpPost("create-request")]
        public async Task<ActionResult<bool>> CreateRoomRequest([FromBody] CreateRoomRequestDto createRoomRequest)
        {
            ServiceResponse<bool> serviceResponse = await _roomRequestService.CreateRoomRequest(createRoomRequest, User.GetRoomNumber());

            if (!serviceResponse.IsValid)
            {
                return BadRequest(serviceResponse.Errors);
            }

            return NoContent();
        }

        [HttpGet("guest-requests")]
        public async Task<ActionResult<GuestRoomRequestDto>> GetMyRequests()
        {
            ServiceResponse<List<GuestRoomRequestDto>> serviceResponse = await _roomRequestService.GetGuestRoomRequests(User.GetRoomNumber());

            if (!serviceResponse.IsValid)
            {
                return BadRequest(serviceResponse.Errors);
            }

            return Ok(serviceResponse.Data);
        }
    }
}
