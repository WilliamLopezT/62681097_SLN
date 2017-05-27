using SLN_62681097.Entities.Entities;
using System.Data.Entity.ModelConfiguration;

namespace SLN_62681097.Persistence.EntityTypeConfigurations
{
    public class EstacionTrabajoConfiguration : EntityTypeConfiguration<EstacionTrabajo>
    {
        public EstacionTrabajoConfiguration()
        {
            Property(v => v.Nombre)
                .IsRequired()
                .HasMaxLength(50);

            HasRequired(v => v.Laboratorio)
                .WithMany(g => g.EstacionTrabajos)
                .HasForeignKey(v => v.LaboratorioId);
        }
    }
}
