using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Identity;
using Microsoft.IdentityModel.Tokens;
using SoleusHotelApi.Data;
using SoleusHotelApi.Entities;
using System.Text;

namespace SoleusHotelApi.Extensions
{
    public static class IdentityServiceExtensions
    {
        public static IServiceCollection AddIdentityServices(this IServiceCollection services, IConfiguration configuration)
        {

            services.AddIdentityCore<HotelUser>(opt =>
            {
                opt.Password.RequireNonAlphanumeric = false;
            })
                .AddRoles<HotelRole>()
                .AddRoleManager<RoleManager<HotelRole>>()
                .AddSignInManager<SignInManager<HotelUser>>()
                .AddRoleValidator<RoleValidator<HotelRole>>()
                .AddEntityFrameworkStores<DataContext>()
                .AddTokenProvider<DataProtectorTokenProvider<HotelUser>>(TokenOptions.DefaultProvider);


            services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
                .AddJwtBearer(options =>
                {
                    options.TokenValidationParameters = new TokenValidationParameters
                    {
                        ValidateIssuerSigningKey = true,
                        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(configuration["TokenKey"])),
                        ValidateIssuer = false,
                        ValidateAudience = false
                    };                    
                });

            services.AddAuthorization(opt =>
            {
                opt.AddPolicy("AdminLevel", policy => policy.RequireRole("Admin"));
                opt.AddPolicy("GuestLevel", policy => policy.RequireRole("Admin", "Guest"));
                opt.AddPolicy("EmployeeLevel", policy => policy.RequireRole("Admin", "Maintenance", "Housekeeping", "Reception"));
                opt.AddPolicy("ReceptionLevel", policy => policy.RequireRole("Admin", "Reception"));
                opt.AddPolicy("BackofficeLevel", policy => policy.RequireRole("Admin", "Maintenance", "Housekeeping"));
            });

            return services;
        }        
    }
}
