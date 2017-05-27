using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace SLN_62681097.Entities.Entities
{
    public class EstacionTrabajo
    {
        public int EstacionTrabajoId { get; set; }
        public String Nombre { get; set; }
        public Laboratorio Laboratorio { get; set; }
        public int LaboratorioId { get; set; }
        public ICollection<Hardware> Hardwares { get; set; }

        public EstacionTrabajo()
        {
            Hardwares = new Collection<Hardware>();
        }

    }
}