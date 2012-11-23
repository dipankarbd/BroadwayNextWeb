using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class TechnologyProviderMap : EntityTypeConfiguration<TechnologyProvider>
    {
        public TechnologyProviderMap()
        {
            // Primary Key
            this.HasKey(t => t.TPID);

            // Properties
            this.Property(t => t.Description)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.InputBy)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("TechnologyProvider");
            this.Property(t => t.TPID).HasColumnName("TPID");
            this.Property(t => t.Description).HasColumnName("Description");
            this.Property(t => t.InputDate).HasColumnName("InputDate");
            this.Property(t => t.InputBy).HasColumnName("InputBy");
        }
    }
}
