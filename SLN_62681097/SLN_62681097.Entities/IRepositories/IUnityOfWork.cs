using System;

namespace SLN_62681097.Entities.IRepositories
{
    // Debe heredar de IDisposable para que el Garbage Collector pueda liberar memoria que ya no utilice.
    public interface IUnityOfWork : IDisposable
    {
        // Cada una de las propiedades deben ser de solo lectura.
        IActividadRepository Actividads { get; }
        IClasePracticaRepository ClasePracticas { get; }
        IEstacionTrabajoRepository EstacionTrabajos { get; }
        IHardwareRepository Hardwares { get; }
        ILaboratorioRepository Laboratorios { get; }
        IMantenimientoRepository Mantenimientos { get; }
        IReservaRepository Reservas { get; }
        ISoftwareRepository Softwares { get; }
        ISolicitanteRepository Solicitantes { get; }
        ITecnicoRepository Tecnicos { get; }
        ITipoActividadRepository TipoActividads { get; }
        ITipoEventoRepository TipoEventos { get; }
        ITipoHardwareRepository TipoHardwares { get; }
        ITipoMantenimientoRepository TipoMantenimientos { get; }
        ITipoSoftwareRepository TipoSoftwares { get; }
        ITipoSolicitanteRepository TipoSolicitantes { get; }

        // Método que guardará los cambios en la base de datos.
        int SaveChanges();

        void StateModified(object entity);
    }
}
