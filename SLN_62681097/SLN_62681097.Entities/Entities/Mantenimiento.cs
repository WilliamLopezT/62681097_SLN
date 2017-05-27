using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SLN_62681097.Entities.Entities
{
    public class Mantenimiento : Actividad
    {
        public Tecnico Tecnico { get; set; }
        public int TecnicoId { get; set; }
        public String Comentario { get; set; }
        public TipoMantenimiento TipoMantenimiento { get; set; }
        public int TipoMantenimientoId { get; set; }
    }

}