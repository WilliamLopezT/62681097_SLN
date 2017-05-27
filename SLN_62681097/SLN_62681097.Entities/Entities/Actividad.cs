using System;

namespace SLN_62681097.Entities.Entities
{
    public class Actividad
    {
        public int ActividadId { get; set; }
        public TipoActividad TipoActividad { get; set; }
        public Solicitante Solicitante { get; set; }
        public Laboratorio Laboratorio { get; set; }
        public DateTime Inicio { get; set; }
        public DateTime Fin { get; set; }
    }
}