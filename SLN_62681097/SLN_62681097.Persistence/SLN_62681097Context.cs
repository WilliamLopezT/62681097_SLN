using SLN_62681097.Entities.Entities;
using SLN_62681097.Persistence.EntityTypeConfigurations;
using System.Data.Entity;

namespace SLN_62681097.Persistence
{
    public class SLN_62681097Context : DbContext
    {
        public DbSet<Actividad> Actividad { get; set; }
        public DbSet<ClasePractica> ClasePractica { get; set; }
        public DbSet<EstacionTrabajo> EstacionTrabajo { get; set; }
        public DbSet<Hardware> Hardware { get; set; }
        public DbSet<Laboratorio> Laboratorio { get; set; }
        public DbSet<Mantenimiento> Mantenimiento { get; set; }
        public DbSet<Reserva> Reserva { get; set; }
        public DbSet<Software> Software { get; set; }
        public DbSet<Solicitante> Solicitante { get; set; }
        public DbSet<Tecnico> Tecnico { get; set; }
        public DbSet<TipoActividad> TipoActividad { get; set; }
        public DbSet<TipoEvento> TipoEvento { get; set; }
        public DbSet<TipoHardware> TipoHardware { get; set; }
        public DbSet<TipoMantenimiento> TipoMantenimiento { get; set; }
        public DbSet<TipoSoftware> TipoSoftware { get; set; }
        public DbSet<TipoSolicitante> TipoSolicitante { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new EstacionTrabajoConfiguration());
            modelBuilder.Configurations.Add(new HardwareConfiguration());
            modelBuilder.Configurations.Add(new LaboratorioConfiguration());
            modelBuilder.Configurations.Add(new SoftwareConfiguration());
            modelBuilder.Configurations.Add(new SolicitanteConfiguration());

            base.OnModelCreating(modelBuilder);
        }
    }
}
