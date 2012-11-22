using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class NoteTypeMap : EntityTypeConfiguration<NoteType>
    {
        public NoteTypeMap()
        {
            // Primary Key
            this.HasKey(t => t.NoteTypeID);

            // Properties
            this.Property(t => t.NoteType1)
                .IsRequired()
                .HasMaxLength(30);

            // Properties
            this.Property(t => t.Description)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("NoteType");
            this.Property(t => t.NoteTypeID).HasColumnName("NoteTypeID");
            this.Property(t => t.Description).HasColumnName("Description");
            this.Property(t => t.NoteType1).HasColumnName("NoteType");
        }
    }
}
