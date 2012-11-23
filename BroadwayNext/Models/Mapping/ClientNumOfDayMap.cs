using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class ClientNumOfDayMap : EntityTypeConfiguration<ClientNumOfDay>
    {
        public ClientNumOfDayMap()
        {
            // Primary Key
            this.HasKey(t => t.NumID);

            // Properties
            this.Property(t => t.Description)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.InputBy)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("ClientNumOfDays");
            this.Property(t => t.NumID).HasColumnName("NumID");
            this.Property(t => t.Description).HasColumnName("Description");
            this.Property(t => t.InputDate).HasColumnName("InputDate");
            this.Property(t => t.InputBy).HasColumnName("InputBy");
        }
    }
}
