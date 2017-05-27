using SLN_62681097.Entities.Entities;
using SLN_62681097.Entities.IRepositories;

namespace SLN_62681097.Persistence.Repositories
{
    public class TipoSolicitanteRepository : Repository<TipoSolicitante>, ITipoSolicitanteRepository
    {
        public TipoSolicitanteRepository(SLN_62681097Context context):base(context)
        {

        }
    }
}