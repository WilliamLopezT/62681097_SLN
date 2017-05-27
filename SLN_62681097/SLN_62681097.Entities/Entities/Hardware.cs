using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SLN_62681097.Entities.Entities
{
    public class Hardware
    {
        public int HardwareId { get; set; }
        public String Nombre { get; set; }
        public TipoHardware TipoHardware { get; set; }
        public int TipoHardwareId { get; set; }
    }
}