using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class ClientManagerMap : EntityTypeConfiguration<ClientManager>
    {
        public ClientManagerMap()
        {
            // Primary Key
            this.HasKey(t => t.ClientManagerID);

            // Properties
            this.Property(t => t.Division)
                .HasMaxLength(50);

            this.Property(t => t.Operator)
                .HasMaxLength(30);

            this.Property(t => t.InputBy)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("ClientManagers");
            this.Property(t => t.ClientManagerID).HasColumnName("ClientManagerID");
            this.Property(t => t.ClientID).HasColumnName("ClientID");
            this.Property(t => t.Title).HasColumnName("Title");
            this.Property(t => t.Division).HasColumnName("Division");
            this.Property(t => t.Operator).HasColumnName("Operator");
            this.Property(t => t.InputDate).HasColumnName("InputDate");
            this.Property(t => t.InputBy).HasColumnName("InputBy");

            // Relationships
            this.HasRequired(t => t.Client)
                .WithMany(t => t.ClientManagers)
                .HasForeignKey(d => d.ClientID);

        }
    }
}
