using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class DocumentLocationMap : EntityTypeConfiguration<DocumentLocation>
    {
        public DocumentLocationMap()
        {
            // Primary Key
            this.HasKey(t => new { t.DocumentLocationID, t.RecordNumber });

            // Properties
            this.Property(t => t.RecordNumber)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.LocationType)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("DocumentLocation");
            this.Property(t => t.DocumentLocationID).HasColumnName("DocumentLocationID");
            this.Property(t => t.RecordNumber).HasColumnName("RecordNumber");
            this.Property(t => t.LocationType).HasColumnName("LocationType");
        }
    }
}
