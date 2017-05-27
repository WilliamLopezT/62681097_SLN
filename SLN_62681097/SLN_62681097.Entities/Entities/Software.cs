using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SLN_62681097.Entities.Entities
{
    public class Software
    {
        public int SoftwareId { get; set; }
        public String Nombre { get; set; }
        public TipoSoftware TipoSoftware { get; set; }
        public int TipoSoftwareId { get; set; }
        public Criticidad Criticidad { get; set; }
    }
}