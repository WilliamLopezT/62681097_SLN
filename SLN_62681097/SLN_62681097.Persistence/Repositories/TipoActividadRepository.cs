using SLN_62681097.Entities.Entities;
using SLN_62681097.Entities.IRepositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SLN_62681097.Persistence.Repositories
{
    public class TipoActividadRepository : Repository<TipoActividad>, ITipoActividadRepository
    {
        public TipoActividadRepository(SLN_62681097Context context) : base(context)
        {

        }
    }
}