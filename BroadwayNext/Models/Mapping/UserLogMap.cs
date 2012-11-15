using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class UserLogMap : EntityTypeConfiguration<UserLog>
    {
        public UserLogMap()
        {
            // Primary Key
            this.HasKey(t => t.UserID);

            // Properties
            this.Property(t => t.Loginname)
                .HasMaxLength(50);

            this.Property(t => t.MachineName)
                .HasMaxLength(100);

            this.Property(t => t.BrowserType)
                .HasMaxLength(30);

            this.Property(t => t.OperatingSystem)
                .HasMaxLength(30);

            this.Property(t => t.IPAddress)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("UserLog");
            this.Property(t => t.UserID).HasColumnName("UserID");
            this.Property(t => t.Loginname).HasColumnName("Loginname");
            this.Property(t => t.MachineName).HasColumnName("MachineName");
            this.Property(t => t.BrowserType).HasColumnName("BrowserType");
            this.Property(t => t.OperatingSystem).HasColumnName("OperatingSystem");
            this.Property(t => t.IPAddress).HasColumnName("IPAddress");
            this.Property(t => t.ScreenWidth).HasColumnName("ScreenWidth");
            this.Property(t => t.ScreenHeight).HasColumnName("ScreenHeight");
            this.Property(t => t.LoginDate).HasColumnName("LoginDate");
            this.Property(t => t.LogoffDate).HasColumnName("LogoffDate");
        }
    }
}
