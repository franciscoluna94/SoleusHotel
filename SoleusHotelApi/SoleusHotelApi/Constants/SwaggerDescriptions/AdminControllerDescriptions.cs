namespace SoleusHotelApi.Constants.SwaggerDescriptions
{
    public static class AdminControllerDescriptions
    {
        public const string CreateUser200Ok = "Returns the basic information of a new created user";
        public const string CreateUser409Conflict = "The user already exists";
        public const string GetHotelUsers200Ok = "Returns the list of users";
        public const string GetHotelUser200Ok = "Returns an user by its room number";
        public const string UserNotFound400BadRequest = "User not found";
        public const string EditHotelUser200Ok = "Returns the basic information of the successfully edited user";
        public const string ResetGuestPasswords204NoContent = "Returned if the password are reset successfully";
        public const string DeleteUser204NoContent = "Returned if the user is deleted successfully";
        public const string DeleteUser409NoContent = "The user being deleted is the only Admin user";
        public const string InitialSetup200Ok = "Returned if the setup is completed successfully";
        public const string InitialSetup409Conflict = "The setup has been already done before";
    }
}
