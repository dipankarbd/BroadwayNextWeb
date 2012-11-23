using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class ClientNotificationMap : EntityTypeConfiguration<ClientNotification>
    {
        public ClientNotificationMap()
        {
            // Primary Key
            this.HasKey(t => t.NotificationID);

            // Properties
            this.Property(t => t.Email)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.CalendarType)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.InputBy)
                .HasMaxLength(50);

            this.Property(t => t.LastModifiedBy)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("ClientNotifications");
            this.Property(t => t.NotificationID).HasColumnName("NotificationID");
            this.Property(t => t.ClientID).HasColumnName("ClientID");
            this.Property(t => t.DivisionID).HasColumnName("DivisionID");
            this.Property(t => t.Email).HasColumnName("Email");
            this.Property(t => t.CalendarType).HasColumnName("CalendarType");
            this.Property(t => t.InputDate).HasColumnName("InputDate");
            this.Property(t => t.InputBy).HasColumnName("InputBy");
            this.Property(t => t.LastModifiedDate).HasColumnName("LastModifiedDate");
            this.Property(t => t.LastModifiedBy).HasColumnName("LastModifiedBy");

            // Relationships
            this.HasRequired(t => t.Client)
                .WithMany(t => t.ClientNotifications)
                .HasForeignKey(d => d.ClientID);
            this.HasRequired(t => t.Division)
                .WithMany(t => t.ClientNotifications)
                .HasForeignKey(d => d.DivisionID);

        }
    }
}
