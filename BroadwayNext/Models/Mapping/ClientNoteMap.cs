using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class ClientNoteMap : EntityTypeConfiguration<ClientNote>
    {
        public ClientNoteMap()
        {
            // Primary Key
            this.HasKey(t => t.ClientNotesID);

            // Properties
            this.Property(t => t.NoteType)
                .HasMaxLength(50);

            this.Property(t => t.InputStatus)
                .HasMaxLength(10);

            this.Property(t => t.InputBy)
                .HasMaxLength(30);

            this.Property(t => t.LastModifiedBy)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("ClientNotes");
            this.Property(t => t.ClientNotesID).HasColumnName("ClientNotesID");
            this.Property(t => t.ClientID).HasColumnName("ClientID");
            this.Property(t => t.NoteType).HasColumnName("NoteType");
            this.Property(t => t.Notes).HasColumnName("Notes");
            this.Property(t => t.Collection).HasColumnName("Collection");
            this.Property(t => t.InputStatus).HasColumnName("InputStatus");
            this.Property(t => t.InputDate).HasColumnName("InputDate");
            this.Property(t => t.InputBy).HasColumnName("InputBy");
            this.Property(t => t.LastModifiedDate).HasColumnName("LastModifiedDate");
            this.Property(t => t.LastModifiedBy).HasColumnName("LastModifiedBy");

            // Relationships
            this.HasRequired(t => t.Client)
                .WithMany(t => t.ClientNotes)
                .HasForeignKey(d => d.ClientID);

        }
    }
}
