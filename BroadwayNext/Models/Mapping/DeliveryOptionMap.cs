using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class DeliveryOptionMap : EntityTypeConfiguration<DeliveryOption>
    {
        public DeliveryOptionMap()
        {
            // Primary Key
            this.HasKey(t => new { t.DeliveryID, t.InputBy });

            // Properties
            this.Property(t => t.Description)
                .HasMaxLength(100);

            this.Property(t => t.InputBy)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("DeliveryOptions");
            this.Property(t => t.DeliveryID).HasColumnName("DeliveryID");
            this.Property(t => t.Description).HasColumnName("Description");
            this.Property(t => t.Inputdate).HasColumnName("Inputdate");
            this.Property(t => t.InputBy).HasColumnName("InputBy");
        }
    }
}