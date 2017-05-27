using SLN_62681097.Entities.Entities;
using System.Data.Entity.ModelConfiguration;

namespace SLN_62681097.Persistence.EntityTypeConfigurations
{
    public class LaboratorioConfiguration : EntityTypeConfiguration<Laboratorio>
    {
        public LaboratorioConfiguration()
        {
            Property(v => v.Nombre)
                .IsRequired()
                .HasMaxLength(50);

            HasMany(v => v.Tecnicos)
                .WithMany(g => g.Laboratorios)
                .Map(m =>
                {
                    m.ToTable("LaboratorioTecnicos");
                    m.MapLeftKey("Id_Laboratorio");
                    m.MapRightKey("Id_Tecnico");
                });
        }
    }
}
