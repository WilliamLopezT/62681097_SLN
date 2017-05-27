using SLN_62681097.Entities.Entities;
using System.Data.Entity.ModelConfiguration;

namespace SLN_62681097.Persistence.EntityTypeConfigurations
{
    public class HardwareConfiguration : EntityTypeConfiguration<Hardware>
    {
        public HardwareConfiguration()
        {
            Property(v => v.Nombre)
                .IsRequired()
                .HasMaxLength(100);

            HasRequired(v => v.TipoHardware)
                .WithMany(g => g.Hardwares)
                .HasForeignKey(v => v.TipoHardwareId);
        }

    }
}
