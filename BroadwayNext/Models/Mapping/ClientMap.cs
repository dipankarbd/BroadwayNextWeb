using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class ClientMap : EntityTypeConfiguration<Client>
    {
        public ClientMap()
        {
            // Primary Key
            this.HasKey(t => t.ClientID);

            // Properties
            this.Property(t => t.Clinum)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.AcctPrefix)
                .HasMaxLength(20);

            this.Property(t => t.Company)
                .HasMaxLength(100);

            this.Property(t => t.Address1)
                .HasMaxLength(100);

            this.Property(t => t.Address2)
                .HasMaxLength(100);

            this.Property(t => t.City)
                .HasMaxLength(100);

            this.Property(t => t.State)
                .HasMaxLength(2);

            this.Property(t => t.Zip)
                .HasMaxLength(10);

            this.Property(t => t.Country)
                .HasMaxLength(100);

            this.Property(t => t.Province)
                .HasMaxLength(100);      

            this.Property(t => t.FirstName)
                .HasMaxLength(50);

            this.Property(t => t.LastName)
                .HasMaxLength(50);

            this.Property(t => t.Phone)
                .HasMaxLength(20);

            this.Property(t => t.PhoneExt)
                .HasMaxLength(5);

            this.Property(t => t.Fax)
                .HasMaxLength(20);

            this.Property(t => t.Mobile)
                .HasMaxLength(20);

            this.Property(t => t.TechnologyProvider)
                .HasMaxLength(50);

            this.Property(t => t.Email)
                .HasMaxLength(50);

            this.Property(t => t.Website)
                .HasMaxLength(50);

            this.Property(t => t.Inputby)
                .HasMaxLength(30);

            this.Property(t => t.Artist)
                .HasMaxLength(50);

            this.Property(t => t.PC)
                .HasMaxLength(50);

            this.Property(t => t.Title)
                .HasMaxLength(50);

            this.Property(t => t.CreditLimit)
                .HasMaxLength(20);

            this.Property(t => t.LastModifiedBy)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Clients");
            this.Property(t => t.ClientID).HasColumnName("ClientID");
            this.Property(t => t.Clinum).HasColumnName("Clinum");
            this.Property(t => t.AcctPrefix).HasColumnName("AcctPrefix");
            this.Property(t => t.Company).HasColumnName("Company");
            this.Property(t => t.Address1).HasColumnName("Address1");
            this.Property(t => t.Address2).HasColumnName("Address2");
            this.Property(t => t.City).HasColumnName("City");
            this.Property(t => t.State).HasColumnName("State");
            this.Property(t => t.Zip).HasColumnName("Zip");
            this.Property(t => t.Country).HasColumnName("Country");
            this.Property(t => t.FirstName).HasColumnName("FirstName");
            this.Property(t => t.LastName).HasColumnName("LastName");
            this.Property(t => t.Phone).HasColumnName("Phone");
            this.Property(t => t.PhoneExt).HasColumnName("PhoneExt");
            this.Property(t => t.Fax).HasColumnName("Fax");
            this.Property(t => t.Mobile).HasColumnName("Mobile");
            this.Property(t => t.TechnologyProvider).HasColumnName("TechnologyProvider");
            this.Property(t => t.ActiveType).HasColumnName("ActiveType");
            this.Property(t => t.Email).HasColumnName("Email");
            this.Property(t => t.Website).HasColumnName("Website");
            this.Property(t => t.DNE).HasColumnName("DNE");
            this.Property(t => t.Inputdate).HasColumnName("Inputdate");
            this.Property(t => t.Inputby).HasColumnName("Inputby");
            this.Property(t => t.CreditHold).HasColumnName("CreditHold");
            this.Property(t => t.PaymentTermDays).HasColumnName("PaymentTermDays");
            this.Property(t => t.AerialPricing).HasColumnName("AerialPricing");
            this.Property(t => t.InvDays).HasColumnName("InvDays");
            this.Property(t => t.PrintInoutSignOff).HasColumnName("PrintInoutSignOff");
            this.Property(t => t.PrintLocID).HasColumnName("PrintLocID");
            this.Property(t => t.Artist).HasColumnName("Artist");
            this.Property(t => t.PC).HasColumnName("PC");
            this.Property(t => t.CareOff).HasColumnName("CareOff");
            this.Property(t => t.TravelLabor).HasColumnName("TravelLabor");
            this.Property(t => t.Title).HasColumnName("Title");
            this.Property(t => t.LocationNameType).HasColumnName("LocationNameType");
            this.Property(t => t.CreditLimit).HasColumnName("CreditLimit");
            this.Property(t => t.LastModifiedBy).HasColumnName("LastModifiedBy");
            this.Property(t => t.LastModifiedDate).HasColumnName("LastModifiedDate");
        }
    }
}
