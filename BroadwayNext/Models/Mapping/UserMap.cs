using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class UserMap : EntityTypeConfiguration<User>
    {
        public UserMap()
        {
            // Primary Key
            this.HasKey(t => new { t.UserID, t.Loginname });

            // Properties
            this.Property(t => t.Loginname)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.Displayname)
                .HasMaxLength(50);

            this.Property(t => t.Lastname)
                .HasMaxLength(50);

            this.Property(t => t.Firstname)
                .HasMaxLength(50);

            this.Property(t => t.Password)
                .HasMaxLength(100);

            this.Property(t => t.Email)
                .HasMaxLength(100);

            this.Property(t => t.PrinterDefault)
                .HasMaxLength(100);

            this.Property(t => t.PrinterCheck)
                .HasMaxLength(100);

            this.Property(t => t.Extension)
                .HasMaxLength(20);

            this.Property(t => t.Email2)
                .HasMaxLength(50);

            this.Property(t => t.NickName)
                .HasMaxLength(10);

            this.Property(t => t.PasswordSecurityQuestion)
                .HasMaxLength(100);

            this.Property(t => t.PasswordSecurityanswer)
                .HasMaxLength(100);

            this.Property(t => t.Inputby)
                .HasMaxLength(50);

            this.Property(t => t.LastModifiedby)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Users");
            this.Property(t => t.UserID).HasColumnName("UserID");
            this.Property(t => t.Loginname).HasColumnName("Loginname");
            this.Property(t => t.Displayname).HasColumnName("Displayname");
            this.Property(t => t.Lastname).HasColumnName("Lastname");
            this.Property(t => t.Firstname).HasColumnName("Firstname");
            this.Property(t => t.Password).HasColumnName("Password");
            this.Property(t => t.Email).HasColumnName("Email");
            this.Property(t => t.PrinterDefault).HasColumnName("PrinterDefault");
            this.Property(t => t.PrinterCheck).HasColumnName("PrinterCheck");
            this.Property(t => t.UserGroupID).HasColumnName("UserGroupID");
            this.Property(t => t.Photo).HasColumnName("Photo");
            this.Property(t => t.UserType).HasColumnName("UserType");
            this.Property(t => t.DailyStoreNote).HasColumnName("DailyStoreNote");
            this.Property(t => t.DailyClientNote).HasColumnName("DailyClientNote");
            this.Property(t => t.DailyVendorNote).HasColumnName("DailyVendorNote");
            this.Property(t => t.Unscheduled).HasColumnName("Unscheduled");
            this.Property(t => t.ActiveType).HasColumnName("ActiveType");
            this.Property(t => t.Extension).HasColumnName("Extension");
            this.Property(t => t.Sls).HasColumnName("Sls");
            this.Property(t => t.ProphesyLocal).HasColumnName("ProphesyLocal");
            this.Property(t => t.Email2).HasColumnName("Email2");
            this.Property(t => t.EmailSig).HasColumnName("EmailSig");
            this.Property(t => t.Email2Sig).HasColumnName("Email2Sig");
            this.Property(t => t.RecurringReports).HasColumnName("RecurringReports");
            this.Property(t => t.NickName).HasColumnName("NickName");
            this.Property(t => t.LogoffTime).HasColumnName("LogoffTime");
            this.Property(t => t.DoNotLogoff).HasColumnName("DoNotLogoff");
            this.Property(t => t.Sysadmin).HasColumnName("Sysadmin");
            this.Property(t => t.PasswordSecurityQuestion).HasColumnName("PasswordSecurityQuestion");
            this.Property(t => t.PasswordSecurityanswer).HasColumnName("PasswordSecurityanswer");
            this.Property(t => t.Inputdate).HasColumnName("Inputdate");
            this.Property(t => t.Inputby).HasColumnName("Inputby");
            this.Property(t => t.LastModifieddate).HasColumnName("LastModifieddate");
            this.Property(t => t.LastModifiedby).HasColumnName("LastModifiedby");

            // Relationships
            this.HasRequired(t => t.UserGroup)
                 .WithMany(t => t.Users)
                 .HasForeignKey(d => d.UserGroupID);
        }
    }
}
