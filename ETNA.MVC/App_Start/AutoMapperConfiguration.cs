using AutoMapper;
using ETNA.MVC.LogisticaServices;
using ETNA.MVC.Models.LO;

namespace ETNA.MVC
{
    public class AutoMapperConfiguration
    {
        public static void Configure()
        {
            Mapper.Initialize(cfg =>
            {
                cfg.AddProfile(new MapperUserProfile());
            });
        }
    }

    public class MapperUserProfile : Profile
    {
        protected override void Configure()
        {
            Mapper.CreateMap<AlmacenDto, AlmacenViewModel>();
            Mapper.CreateMap<ListaSolicitudEntradaDto, ListaSolicitudEntradaViewModel>();
            Mapper.CreateMap<DetalleSolicitudEntradaDto, DetalleSolicitudEntradaViewModel>();
            Mapper.CreateMap<SolicitudEntradaDto, SolicitudEntradaViewModel>();
        }
    }
}


