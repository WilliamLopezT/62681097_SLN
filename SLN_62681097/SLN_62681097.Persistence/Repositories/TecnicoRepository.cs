using SLN_62681097.Entities.Entities;
using SLN_62681097.Entities.IRepositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SLN_62681097.Persistence.Repositories
{
    public class TecnicoRepository : Repository<Tecnico>, ITecnicoRepository
    {
        public TecnicoRepository(SLN_62681097Context context) : base(context)
        {

        }
    }
}