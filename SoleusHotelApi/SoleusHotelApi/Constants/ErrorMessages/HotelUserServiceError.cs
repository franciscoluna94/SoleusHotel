namespace SoleusHotelApi.Constants.ErrorMessages
{
    public static class HotelUserServiceError
    {
        public const string UserNotFound = "User not found";
        public const string UserAlreadyExists = "This user already exists";
        public const string UserCreated = "User created correctly";
        public const string NullPasswordAndUserName = "Please enter a room number and a password";
        public const string InvalidUserName = "Invalid username";
        public const string InvalidPassword = "Invalid password";
        public const string ChangesUnsaved = "Unable to save your changes";
        public const string UserEditedButPassword = "User partially updated: Unable to update the password";
        public const string RoomDatesUnsaved = "Unable to update the dates of the room";
        public const string ForbiddenEditPermission = "You don't have the permission to modify this user";
        public const string ForbiddenPasswordChangeRole = "Unable to modify this room password, please contact your administrator";
        public const string ForbiddenPasswordChangeWrongRoom = "Unable to modify other room password";
        public const string WrongGuestName = "The guest name provided is not correct";
        public const string LastAdmin = "Unable to delete the last admin user";
        public const string UnableToChangeRoles = "Unable to modify roles";
        public const string RemoveRolesFailed = "Failed to remove roles";

    }
}
