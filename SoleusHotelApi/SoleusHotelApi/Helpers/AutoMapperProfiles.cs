using AutoMapper;
using SoleusHotelApi.DTOs.HotelUser;
using SoleusHotelApi.DTOs.Room;
using SoleusHotelApi.Entities;

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
            CreateMap<HotelUser, Room>().ForMember(dest => dest.RoomRequests, opt => opt.MapFrom(src => src.RoomRequests.Count()));
        }
        
    }
}
