using SLN_62681097.Entities.Entities;
using System.Data.Entity.ModelConfiguration;

namespace SLN_62681097.Persistence.EntityTypeConfigurations
{
    public class SolicitanteConfiguration : EntityTypeConfiguration<Solicitante>
    {
        public SolicitanteConfiguration()
        {
            Property(v => v.ApellidoPaterno)
                .IsRequired()
                .HasMaxLength(35);

            Property(v => v.ApellidoMaterno)
                .IsRequired()
                .HasMaxLength(35);

            Property(v => v.Nombres)
                .IsRequired()
                .HasMaxLength(35);

            HasRequired(v => v.TipoSolicitante)
                .WithMany(g => g.Solicitantes)
                .HasForeignKey(v => v.TipoSolicitanteId);
        }
    }
}
