using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class ZipLongLatMap : EntityTypeConfiguration<ZipLongLat>
    {
        public ZipLongLatMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            //this.Property(t => t.ID)
            //    .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Zip)
                .HasMaxLength(10);

            this.Property(t => t.City)
                .HasMaxLength(50);

            this.Property(t => t.State)
                .HasMaxLength(2);

            // Table & Column Mappings
            this.ToTable("ZipLongLat");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.Zip).HasColumnName("Zip");
            this.Property(t => t.City).HasColumnName("City");
            this.Property(t => t.State).HasColumnName("State");
            this.Property(t => t.Latitude).HasColumnName("Latitude");
            this.Property(t => t.Longitude).HasColumnName("Longitude");
        }
    }
}