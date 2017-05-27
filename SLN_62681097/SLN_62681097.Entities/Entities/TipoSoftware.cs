using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SLN_62681097.Entities.Entities
{
    public class TipoSoftware
    {
        public int TipoSoftwareId { get; set; }
        public String Nombre { get; set; }
        public ICollection<Software> Softwares { get; set; }

        public TipoSoftware()
        {
            Softwares = new Collection<Software>();
        }

    }
}