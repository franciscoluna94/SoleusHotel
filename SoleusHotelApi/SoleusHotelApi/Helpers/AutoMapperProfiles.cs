using AutoMapper;
using SoleusHotelApi.DTOs;
using SoleusHotelApi.DTOs.HotelUser;
using SoleusHotelApi.Entities;
using System.Globalization;

namespace SoleusHotelApi.Helpers
{
    public class AutoMapperProfiles : Profile
    {
        public AutoMapperProfiles()
        {
            CreateMap<CreateHotelUserDto, HotelUser>()
                .ForMember(dest => dest.UserName, opt => opt.MapFrom(src => src.RoomNumber));
            CreateMap<HotelUser, HotelUserDto>().ReverseMap();
            CreateMap<HotelUser, CreatedHotelUserDto>()
                .ForMember(dest => dest.UserRoles, opt => opt.Ignore());
            CreateMap<HotelUser, HotelUserWithRequestsDto>().ForMember(dest => dest.RoomRequests, opt => opt.MapFrom(src => src.RoomRequests.Count()));
            CreateMap<HotelUser, GenerateHotelUserPasswordDto>()
                .ForMember(dest => dest.Password, opt => opt.Ignore());
            CreateMap<EditUserDto, HotelUser>()
                .ForMember(x => x.CheckInDate, y => y.MapFrom(z => DateTime.ParseExact(z.CheckInDate, "dd/MM/yy", CultureInfo.InvariantCulture)))
                .ForMember(x => x.CheckOutDate, y => y.MapFrom(z => DateTime.ParseExact(z.CheckOutDate, "dd/MM/yy", CultureInfo.InvariantCulture)));
            CreateMap<DateTime, DateTime>().ConvertUsing(d => DateTime.SpecifyKind(d, DateTimeKind.Utc));
        }
        
    }
}
