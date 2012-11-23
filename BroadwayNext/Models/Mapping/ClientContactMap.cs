using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class ClientContactMap : EntityTypeConfiguration<ClientContact>
    {
        public ClientContactMap()
        {
            // Primary Key
            this.HasKey(t => t.ClientContactID);

            // Properties
            this.Property(t => t.Clinum)
                .HasMaxLength(30);

            this.Property(t => t.Lastname)
                .HasMaxLength(50);

            this.Property(t => t.Firstname)
                .HasMaxLength(50);

            this.Property(t => t.Initial)
                .IsFixedLength()
                .HasMaxLength(1);

            this.Property(t => t.Address1)
                .HasMaxLength(50);

            this.Property(t => t.Address2)
                .HasMaxLength(50);

            this.Property(t => t.City)
                .HasMaxLength(50);

            this.Property(t => t.State)
                .HasMaxLength(2);

            this.Property(t => t.Zip)
                .HasMaxLength(10);

            this.Property(t => t.Phone)
                .HasMaxLength(25);

            this.Property(t => t.PhoneExt)
                .HasMaxLength(10);

            this.Property(t => t.Fax)
                .HasMaxLength(25);

            this.Property(t => t.Pager)
                .HasMaxLength(50);

            this.Property(t => t.Mobile)
                .HasMaxLength(50);

            this.Property(t => t.Title)
                .HasMaxLength(50);

            this.Property(t => t.Salutation)
                .HasMaxLength(50);

            this.Property(t => t.ContactType)
                .HasMaxLength(50);

            this.Property(t => t.Email)
                .HasMaxLength(100);

            this.Property(t => t.Website)
                .HasMaxLength(100);

            this.Property(t => t.ReferBy)
                .HasMaxLength(50);

            this.Property(t => t.InputBy)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("ClientContacts");
            this.Property(t => t.ClientContactID).HasColumnName("ClientContactID");
            this.Property(t => t.ClientID).HasColumnName("ClientID");
            this.Property(t => t.Clinum).HasColumnName("Clinum");
            this.Property(t => t.Lastname).HasColumnName("Lastname");
            this.Property(t => t.Firstname).HasColumnName("Firstname");
            this.Property(t => t.Initial).HasColumnName("Initial");
            this.Property(t => t.Address1).HasColumnName("Address1");
            this.Property(t => t.Address2).HasColumnName("Address2");
            this.Property(t => t.City).HasColumnName("City");
            this.Property(t => t.State).HasColumnName("State");
            this.Property(t => t.Zip).HasColumnName("Zip");
            this.Property(t => t.Phone).HasColumnName("Phone");
            this.Property(t => t.PhoneExt).HasColumnName("PhoneExt");
            this.Property(t => t.Fax).HasColumnName("Fax");
            this.Property(t => t.Pager).HasColumnName("Pager");
            this.Property(t => t.Mobile).HasColumnName("Mobile");
            this.Property(t => t.Title).HasColumnName("Title");
            this.Property(t => t.Salutation).HasColumnName("Salutation");
            this.Property(t => t.ContactType).HasColumnName("ContactType");
            this.Property(t => t.Email).HasColumnName("Email");
            this.Property(t => t.Website).HasColumnName("Website");
            this.Property(t => t.Notes).HasColumnName("Notes");
            this.Property(t => t.ReferBy).HasColumnName("ReferBy");
            this.Property(t => t.ActiveType).HasColumnName("ActiveType");
            this.Property(t => t.InputDate).HasColumnName("InputDate");
            this.Property(t => t.InputBy).HasColumnName("InputBy");

            // Relationships
            this.HasRequired(t => t.Client)
                .WithMany(t => t.ClientContacts)
                .HasForeignKey(d => d.ClientID);

        }
    }
}
