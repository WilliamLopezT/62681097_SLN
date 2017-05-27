using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace SLN_62681097.Entities.Entities
{
    public class Laboratorio
    {
        public int LaboratorioId { get; set; }
        public String Nombre { get; set; }
        public byte Piso { get; set; }
        public String Estado { get; set; }
        public byte Capacidad { get; set; }
        public ICollection<EstacionTrabajo> EstacionTrabajos { get; set; }
        public ICollection<Tecnico> Tecnicos { get; set; }
        public ICollection<Actividad> Actividades { get; set; }

        public Laboratorio()
        {
            EstacionTrabajos = new Collection<EstacionTrabajo>();
            Tecnicos = new Collection<Tecnico>();
            Actividades = new Collection<Actividad>();
        }

    }
}