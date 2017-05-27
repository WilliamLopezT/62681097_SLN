using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace SLN_62681097.Entities.Entities
{
    public class TipoHardware
    {
        public int TipoHardwareId { get; set; }
        public String Nombre { get; set; }
        public ICollection<Hardware> Hardwares { get; set; }

        public TipoHardware()
        {
            Hardwares = new Collection<Hardware>();
        }

    }
}