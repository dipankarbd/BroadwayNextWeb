using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class ClientInstructionMap : EntityTypeConfiguration<ClientInstruction>
    {
        public ClientInstructionMap()
        {
            // Primary Key
            this.HasKey(t => t.ClientInstructionsID);

            // Properties
            this.Property(t => t.Clinum)
                .HasMaxLength(30);

            this.Property(t => t.InstructionType)
                .HasMaxLength(50);

            this.Property(t => t.Division)
                .HasMaxLength(50);

            this.Property(t => t.InputBy)
                .HasMaxLength(30);

            this.Property(t => t.LastModifiedBy)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("ClientInstructions");
            this.Property(t => t.ClientInstructionsID).HasColumnName("ClientInstructionsID");
            this.Property(t => t.ClientID).HasColumnName("ClientID");
            this.Property(t => t.Clinum).HasColumnName("Clinum");
            this.Property(t => t.InstructionType).HasColumnName("InstructionType");
            this.Property(t => t.Division).HasColumnName("Division");
            this.Property(t => t.Notes).HasColumnName("Notes");
            this.Property(t => t.InputDate).HasColumnName("InputDate");
            this.Property(t => t.InputBy).HasColumnName("InputBy");
            this.Property(t => t.LastModifiedDate).HasColumnName("LastModifiedDate");
            this.Property(t => t.LastModifiedBy).HasColumnName("LastModifiedBy");
            this.Property(t => t.ActiveType).HasColumnName("ActiveType");

            // Relationships
            this.HasRequired(t => t.Client)
                .WithMany(t => t.ClientInstructions)
                .HasForeignKey(d => d.ClientID);

        }
    }
}
