using SLN_62681097.Entities.Entities;
using System.Data.Entity.ModelConfiguration;

namespace SLN_62681097.Persistence.EntityTypeConfigurations
{
    public class SoftwareConfiguration : EntityTypeConfiguration<Software>
    {
        public SoftwareConfiguration()
        {
            Property(v => v.Nombre)
                .IsRequired()
                .HasMaxLength(100);

            HasRequired(v => v.TipoSoftware)
                .WithMany(g => g.Softwares)
                .HasForeignKey(v => v.TipoSoftwareId);
        }
    }
}
