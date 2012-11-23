using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class ClientPrefixMap : EntityTypeConfiguration<ClientPrefix>
    {
        public ClientPrefixMap()
        {
            // Primary Key
            this.HasKey(t => t.ClientPrefixID);

            // Properties
            this.Property(t => t.Company)
                .HasMaxLength(50);

            this.Property(t => t.InputBy)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("ClientPrefix");
            this.Property(t => t.ClientPrefixID).HasColumnName("ClientPrefixID");
            this.Property(t => t.ClientID).HasColumnName("ClientID");
            this.Property(t => t.LocationID).HasColumnName("LocationID");
            this.Property(t => t.Company).HasColumnName("Company");
            this.Property(t => t.InputDate).HasColumnName("InputDate");
            this.Property(t => t.InputBy).HasColumnName("InputBy");

            // Relationships
            this.HasRequired(t => t.Client)
                .WithMany(t => t.ClientPrefixes)
                .HasForeignKey(d => d.ClientID);

        }
    }
}
