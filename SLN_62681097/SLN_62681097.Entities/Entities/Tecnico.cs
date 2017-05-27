using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace SLN_62681097.Entities.Entities
{
    public class Tecnico
    {
        public int TecnicoId { get; set; }
        public String ApellidoPaterno { get; set; }
        public String ApellidoMaterno { get; set; }
        public String Nombres { get; set; }
        public ICollection<Laboratorio> Laboratorios { get; set; }

        public Tecnico()
        {
            Laboratorios = new Collection<Laboratorio>();
        }
    }
}
