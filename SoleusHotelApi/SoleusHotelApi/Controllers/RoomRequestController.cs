using Microsoft.AspNetCore.Mvc;
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
        public async Task<ActionResult<BaseRoomRequestDto>> GetMyRequests()
        {
            ServiceResponse<List<BaseRoomRequestDto>> serviceResponse = await _roomRequestService.GetGuestRoomRequests(User.GetRoomNumber());

            if (!serviceResponse.IsValid)
            {
                return BadRequest(serviceResponse.Errors);
            }

            return Ok(serviceResponse.Data);
        }

        [HttpGet("{roomRequestId}")]
        public async Task<ActionResult<RoomRequestDto>> GetRoomRequest(int roomRequestId)
        {
            ServiceResponse<RoomRequestDto> serviceResponse = await _roomRequestService.GetRoomRequest(roomRequestId);

            if (!serviceResponse.IsValid)
            {
                return BadRequest(serviceResponse.Errors);
            }

            return Ok(serviceResponse.Data);
        }

        [HttpPatch("{roomRequestId}/start")]
        public async Task<ActionResult> StartRoomRequest(int roomRequestId)
        {
            ServiceResponse<bool> response = await _roomRequestService.StartRoomRequest(roomRequestId, User.GetRoles(), User.GetRoomNumber());

            if (!response.IsValid)
            {
                return BadRequest(response.Errors);
            }

            return NoContent();
        }

        [HttpDelete("{roomRequestId}")]
        public async Task<ActionResult> DeleteRoomRequest(int roomRequestId)
        {
            ServiceResponse<bool> serviceResponse = await _roomRequestService.DeleteRoomRequest(roomRequestId);

            if (!serviceResponse.IsValid)
            {
                return BadRequest(serviceResponse.Errors);
            }

            return NoContent();
        }
    }
}
