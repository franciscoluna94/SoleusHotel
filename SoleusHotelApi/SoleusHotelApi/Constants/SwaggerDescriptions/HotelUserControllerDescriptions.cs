namespace SoleusHotelApi.Constants.SwaggerDescriptions
{
    public static class HotelUserControllerDescriptions
    {
        public const string Login200Ok = "Returns the token and info of the logged user";
        public const string Login400BadRequest = "Returns the token and info of the logged user";
        public const string GetHotelUsersWithRequestsNumber200Ok = "Returns a list of guests";
        public const string GetHotel200Ok = "Returns by its room number";
        public const string EditGuest200Ok = "Returns the edited user";
        public const string EditGuest403Forbidden = "The user to edit is not a guest";
        public const string UserNotFound400BadRequest = "User not found";
        public const string ForgotPassword200Ok = "Returns the logged user after updating the password";
        public const string ForgotPassword400BadRequest = "The guest name provided is incorrect";
        public const string ForgotPassword403Fordbidden = "The user trying to update his password is not a guest";
        public const string GenerateUserPassword200Ok = "Returns the user basic information and its new password";
        public const string GenerateUserPassword403Forbidden = "The user to update is not a guest";
    }
}
