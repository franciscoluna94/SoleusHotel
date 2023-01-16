using AutoMapper;
using SoleusHotelApi.DTOs.GuestRoomRequestDto;
using SoleusHotelApi.DTOs.HotelUserDtos;
using SoleusHotelApi.DTOs.PhotoDtos;
using SoleusHotelApi.DTOs.RoomRequestDtos;
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
            CreateMap<HotelUser, HotelUserWithRolesDto>()
                .ForMember(dest => dest.UserRoles, opt => opt.Ignore());
            CreateMap<HotelUser, HotelUserWithRequestsDto>()
                .ForMember(dest => dest.RoomRequests, opt => opt.MapFrom(src => src.RoomRequests.Count()));
            CreateMap<HotelUser, GenerateHotelUserPasswordDto>()
                .ForMember(dest => dest.Password, opt => opt.Ignore());
            CreateMap<EditHotelUserDto, HotelUser>()
                 .ForMember(dest => dest.UserRoles, opt => opt.Ignore());
            
            CreateMap<CreateRoomRequestDto, RoomRequest>();
            CreateMap<RoomRequest, GuestRoomRequestDto>()
                .ForMember(dest => dest.Room, opt => opt.MapFrom(src => src.Room.RoomNumber));

            CreateMap<Photo, PhotoDto>();

            CreateMap<DateTime, DateTime>().ConvertUsing(d => DateTime.SpecifyKind(d, DateTimeKind.Utc));
        }

    }
}
