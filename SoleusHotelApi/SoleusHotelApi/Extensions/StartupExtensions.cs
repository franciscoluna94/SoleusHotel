using Microsoft.EntityFrameworkCore;
using SoleusHotelApi.Data;
using SoleusHotelApi.Data.Repositories;
using SoleusHotelApi.Data.Repositories.Contracts;
using SoleusHotelApi.Helpers;
using SoleusHotelApi.Services;
using SoleusHotelApi.Services.Contracts;

namespace SoleusHotelApi.Extensions
{
    public static class StartupExtensions
    {
        public static IServiceCollection AddApplicationServices(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddDbContext<DataContext>(options =>
                options.UseSqlServer(configuration.GetConnectionString("DefaultConnection")));
            services.AddScoped<IHotelUserRepository, HotelUserRepository>();
            services.AddScoped<IRoomRequestRepository, RoomRequestRepository>();
            services.AddScoped<IRoomRepository, RoomRepository>();
            services.AddScoped<ITokenService, TokenService>();
            services.AddScoped<IAdminService, AdminService>();
            services.AddScoped<IHotelUserService, HotelUserService>();
            services.AddScoped<IRoomRequestService, RoomRequestService>();
            services.AddScoped<IRoomService, RoomService>();
            services.AddAutoMapper(typeof(AutoMapperProfiles).Assembly);

            return services;
        }
        
    }
}
