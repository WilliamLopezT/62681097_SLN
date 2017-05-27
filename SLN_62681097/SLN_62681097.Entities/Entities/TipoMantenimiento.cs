using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SLN_62681097.Entities.Entities
{
    public class TipoMantenimiento
    {
        public int TipoMantenimientoId { get; set; }
        public String Nombre { get; set; }
        public TipoEvento TipoEvento { get; set; }
        public int TipoEventoId { get; set; }

    }
}
