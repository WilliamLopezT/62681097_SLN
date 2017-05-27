using SLN_62681097.Entities.IRepositories;

namespace SLN_62681097.Persistence.Repositories
{
    public class UnityOfWork : IUnityOfWork
    {
        // Variable que contendrá el contexto de la base de datos.
        private readonly SLN_62681097Context _Context;
        // Variable que contendrá la única instancia del objeto UnityOfWork.
        private static UnityOfWork _Instance;
        // Variable para manejo de la concurrencia al crear objetos UnityOfWork.
        private static readonly object _Lock = new object();

        public IActividadRepository Actividads { get; private set; }
        public IClasePracticaRepository ClasePracticas { get; private set; }
        public IEstacionTrabajoRepository EstacionTrabajos { get; private set; }
        public IHardwareRepository Hardwares { get; private set; }
        public ILaboratorioRepository Laboratorios { get; private set; }
        public IMantenimientoRepository Mantenimientos { get; private set; }
        public IReservaRepository Reservas { get; private set; }
        public ISoftwareRepository Softwares { get; private set; }
        public ISolicitanteRepository Solicitantes { get; private set; }
        public ITecnicoRepository Tecnicos { get; private set; }
        public ITipoActividadRepository TipoActividads { get; private set; }
        public ITipoEventoRepository TipoEventos { get; private set; }
        public ITipoHardwareRepository TipoHardwares { get; private set; }
        public ITipoMantenimientoRepository TipoMantenimientos { get; private set; }
        public ITipoSoftwareRepository TipoSoftwares { get; private set; }
        public ITipoSolicitanteRepository TipoSolicitantes { get; private set; }

        // Se define el constructor por defecto como privado para que se fuerce a utilizar la propiedad Instance.
        private UnityOfWork()
        {
            // Se crea un único contexto de base de datos para apuntar todos los repositorios a la misma base de datos.
            _Context = new SLN_62681097Context();

            Actividads = new ActividadRepository(_Context);
            ClasePracticas = new ClasePracticaRepository(_Context);
            EstacionTrabajos = new EstacionTrabajoRepository(_Context);
            Hardwares = new HardwareRepository(_Context);
            Laboratorios = new LaboratorioRepository(_Context);
            Mantenimientos = new MantenimientoRepository(_Context);
            Reservas = new ReservaRepository(_Context);
            Softwares = new SoftwareRepository(_Context);
            Solicitantes = new SolicitanteRepository(_Context);
            Tecnicos = new TecnicoRepository(_Context);
            TipoActividads = new TipoActividadRepository(_Context);
            TipoEventos = new TipoEventoRepository(_Context);
            TipoHardwares = new TipoHardwareRepository(_Context);
            TipoMantenimientos = new TipoMantenimientoRepository(_Context);
            TipoSoftwares = new TipoSoftwareRepository(_Context);
            TipoSolicitantes = new TipoSolicitanteRepository(_Context);
        }

        // Implementación del patrón Singleton para instanciar la clase UnityOfWork.
        public static UnityOfWork Instance
        {
            get
            {
                // Variable de control para manejar el acceso concurrente al instanciamiento de la clase UnityOfWork.
                lock (_Lock)
                {
                    if (_Instance == null)
                    {
                        _Instance = new UnityOfWork();
                    }
                }
                return _Instance;
            }
        }

        // Función que guarda los cambios: lleva los cambios en memoria hacia la base de datos.
        public int SaveChanges()
        {
            return _Context.SaveChanges();
        }

        public void Dispose()
        {
            _Context.Dispose();
        }

        // Método que cambia el estado de una entidad en el EntityFramework para luego reflejarlo 
        // en la base de datos.
        public void StateModified(object Entity)
        {
            _Context.Entry(Entity).State = System.Data.Entity.EntityState.Modified;
        }

    }
}
