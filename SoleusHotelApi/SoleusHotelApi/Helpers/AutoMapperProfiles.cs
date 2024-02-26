using AutoMapper;
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
            #region HotelUser / Rooms
            CreateMap<CreateHotelUserDto, HotelUser>()
                .ForMember(dest => dest.UserName, opt => opt.MapFrom(src => src.RoomNumber));
            CreateMap<HotelUser, HotelUserDto>()
                .ForMember(dest => dest.RoomNumber, opt => opt.MapFrom(src => src.Room.RoomNumber))
                .ForMember(dest => dest.CheckInDate, opt => opt.MapFrom(src => src.Room.CheckInDate))
                .ForMember(dest => dest.CheckOutDate, opt => opt.MapFrom(src => src.Room.CheckOutDate))
                .ReverseMap();
            CreateMap<HotelUser, CreatedHotelUserDto>()
                .ForMember(dest => dest.UserRoles, opt => opt.Ignore())
                .ForMember(dest => dest.RoomNumber, opt => opt.MapFrom(src => src.Room.RoomNumber));
            CreateMap<HotelUser, HotelUserWithRequestsDto>()
                .ForMember(dest => dest.RoomRequests, opt => opt.MapFrom(src => src.Room.RoomRequests.Count))
                .ForMember(dest => dest.RoomNumber, opt => opt.MapFrom(src => src.Room.RoomNumber))
                .ForMember(dest => dest.CheckInDate, opt => opt.MapFrom(src => src.Room.CheckInDate))
                .ForMember(dest => dest.CheckOutDate, opt => opt.MapFrom(src => src.Room.CheckOutDate));
            CreateMap<HotelUser, GenerateHotelUserPasswordDto>()
                .ForMember(dest => dest.RoomNumber, opt => opt.MapFrom(src => src.Room.RoomNumber))
                .ForMember(dest => dest.CheckInDate, opt => opt.MapFrom(src => src.Room.CheckInDate))
                .ForMember(dest => dest.CheckOutDate, opt => opt.MapFrom(src => src.Room.CheckOutDate))
                .ForMember(dest => dest.Password, opt => opt.Ignore());
            CreateMap<HotelUser, HotelUserWithRolesDto>()
                .ForMember(dest => dest.RoomNumber, opt => opt.MapFrom(src => src.Room.RoomNumber))
                .ForMember(dest => dest.CheckInDate, opt => opt.MapFrom(src => src.Room.CheckInDate))
                .ForMember(dest => dest.CheckOutDate, opt => opt.MapFrom(src => src.Room.CheckOutDate))
                .ForMember(dest => dest.UserRoles, opt => opt.Ignore());
            CreateMap<HotelUserDto, CreateHotelUserDto>();
            #endregion

            #region RoomRequest
            CreateMap<CreateRoomRequestDto, RoomRequest>();
            CreateMap<RoomRequest, BaseRoomRequestDto>()
                .ForMember(dest => dest.Room, opt => opt.MapFrom(src => src.Room.RoomNumber))
                .ForMember(dest => dest.Duration, opt => opt.MapFrom(src => src.Duration.HasValue ? src.Duration.Value.Ticks : 0));
            CreateMap<RoomRequest, RoomRequestDto>()
                .ForMember(dest => dest.Room, opt => opt.MapFrom(src => src.Room.RoomNumber));

            #endregion

            #region Photo
            CreateMap<Photo, PhotoDto>();
            #endregion

            #region Other Maps
            CreateMap<DateTime, DateTime>().ConvertUsing(d => DateTime.SpecifyKind(d, DateTimeKind.Utc));
            #endregion
        }

    }
}
