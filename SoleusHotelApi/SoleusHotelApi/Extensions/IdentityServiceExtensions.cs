using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Identity;
using Microsoft.IdentityModel.Tokens;
using SoleusHotelApi.Constants;
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
                opt.AddPolicy("AdminLevel", policy => policy.RequireRole(Roles.Admin));
                opt.AddPolicy("UserLevel", policy => policy.RequireRole(Roles.Admin, Roles.Maintenance, Roles.Housekeeping, Roles.Guest));
                opt.AddPolicy("GuestLevel", policy => policy.RequireRole(Roles.Admin, Roles.Guest));
                opt.AddPolicy("EmployeeLevel", policy => policy.RequireRole(Roles.Admin, Roles.Maintenance, Roles.Housekeeping, Roles.Reception));
                opt.AddPolicy("ReceptionLevel", policy => policy.RequireRole(Roles.Admin, Roles.Reception));
                opt.AddPolicy("BackofficeLevel", policy => policy.RequireRole(Roles.Admin, Roles.Maintenance, Roles.Housekeeping));
            });

            return services;
        }        
    }
}
