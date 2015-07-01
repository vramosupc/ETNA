using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using ETNA.BL.FB;
using ETNA.Domain;
using ETNA.DTOs.FB;
using AutoMapper;

namespace ETNA.WCF.FB
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "LotesService" en el código, en svc y en el archivo de configuración a la vez.
    // NOTA: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione LotesService.svc o LotesService.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class LotesService : ILotesService
    {
        public int InsertarLote(string nroLote, int idTipoLote)
        {
            var gestorLotes = new GestorLotes();
            return gestorLotes.InsertarLote(nroLote, idTipoLote);
        }

        public bool EditarLote(int idLote, string nroLote)
        {
            var gestorLotes = new GestorLotes();
            return gestorLotes.EditarLote(idLote, nroLote);
        }

        public bool EliminarLote(int idLote)
        {
            var gestorLotes = new GestorLotes();
            return gestorLotes.EliminarLote(idLote);
        }

        public List<LoteDto> ListaLotes()
        {
            var gestorLotes = new GestorLotes();
            var lista = gestorLotes.Listar();

            //var listaDtos = new List<LoteDto>();
            //foreach (var lote in lista)
            //{
            //    var dto = new LoteDto();
            //    dto.Id = lote.Id;
            //    dto.FechaCreacion = lote.FechaCreacion;
            //    dto.NroLote = lote.NroLote;
            //    dto.DescripcionTipoLote = lote.TipoLote.Descripcion;
            //    listaDtos.Add(dto);
            //}

            Mapper.CreateMap<Lote, LoteDto>()
                .ForMember(dest => dest.DescripcionTipoLote, opts => opts.MapFrom(src => src.TipoLote.Descripcion));
            var listaDtos = Mapper.Map<List<LoteDto>>(lista);

            return listaDtos;
        }
    }
}
