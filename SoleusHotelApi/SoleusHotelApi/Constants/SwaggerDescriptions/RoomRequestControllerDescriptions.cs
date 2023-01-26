namespace SoleusHotelApi.Constants.SwaggerDescriptions
{
    public static class RoomRequestControllerDescriptions
    {
        public const string UserNotFound400BadRequest = "User not found";
        public const string UserOrRoomRequestNotFound404BadRequest = "User or room request not found";
        public const string GetFilteredRoomRequest200Ok = "Returns the room requests according to the filter parameters";
        public const string GetMyRoomRequests200Ok = "Returns the room requests created by the user";
        public const string GetAssignedRoomRequests200Ok = "Returns the room requests assigned to the user";
        public const string GetRoomRequest200Ok = "Returns a room request by its id";
        public const string GetRoomRequest403Forbidden = "Unable to see other room's room request if the user is a guest";
        public const string EndedRoomRequestsAverageDuration200Ok = "Returns the average time spent on completed room requests by user";
        public const string StartRoomRequest204NoContent = "Returned if a request is assigned to an user correctly";
        public const string StartRoomRequest403Forbidden = "The user's department if not the same of the room request's";
        public const string StartRoomRequest409Conflict = "The room request's status is not new of paused";
        public const string EndRoomRequest204NoContent = "Returned if a request is set as ended correctly";
        public const string EndRoomRequest403Forbidden = "The room request is not assigned to the user trying to end it";
        public const string EndRoomRequest409Conflict = "The room request is not in progress";
        public const string DeleteRoomRequest204NoContent = "Returned if a request is deleted correctly";
        public const string DeleteRoomRequest403Forbidden = "The user is not an employee and he is trying to delete a different user room request";
        public const string DeleteRoomRequest409Conflict = "The room request is already assigned to an user";
    }
}
