namespace SoleusHotelApi.Constants.ErrorMessages
{
    public static class RoomRequestServiceError
    {
        public const string UserNotFound = "User not found";
        public const string RoomNotFound = "Room not found";
        public const string RoomRequestNotFound = "Request not found";
        public const string UnableToSaveRequest = "Unable to save the request";
        public const string StartDifferentDepartmentRequest = "Unable to start a request of another department";
        public const string EndDifferentDepartmentRequest = "Unable to end a request of another department";
        public const string UnableToInitiate = "Unable to initiate the request";
        public const string UnableToEnd = "Unable to end the request";
        public const string UnableToDeleteRequestStatus = "Unable to delete this request. Status: ";
        public const string UnableToDeleteRequest = "Unable to delete this request";
        public const string NoEndedRequests = "This user has no ended requests";
    }
}
