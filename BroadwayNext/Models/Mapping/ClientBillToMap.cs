using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class ClientBillToMap : EntityTypeConfiguration<ClientBillTo>
    {
        public ClientBillToMap()
        {
            // Primary Key
            this.HasKey(t => t.ClientBillToID);

            // Properties
            this.Property(t => t.Clinum)
                .HasMaxLength(30);

            this.Property(t => t.Division)
                .HasMaxLength(50);

            this.Property(t => t.Company)
                .HasMaxLength(50);

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
                .HasMaxLength(20);

            this.Property(t => t.Fax)
                .HasMaxLength(20);

            this.Property(t => t.Contact)
                .HasMaxLength(50);

            this.Property(t => t.Email)
                .HasMaxLength(50);

            this.Property(t => t.InputBy)
                .HasMaxLength(30);

            this.Property(t => t.LastModifiedBy)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("ClientBillTo");
            this.Property(t => t.ClientBillToID).HasColumnName("ClientBillToID");
            this.Property(t => t.ClientID).HasColumnName("ClientID");
            this.Property(t => t.Clinum).HasColumnName("Clinum");
            this.Property(t => t.DeliveryOptions).HasColumnName("DeliveryOptions");
            this.Property(t => t.Division).HasColumnName("Division");
            this.Property(t => t.Company).HasColumnName("BillCompany");
            this.Property(t => t.Address1).HasColumnName("BillAddress1");
            this.Property(t => t.Address2).HasColumnName("BillAddress2");
            this.Property(t => t.City).HasColumnName("BillCity");
            this.Property(t => t.State).HasColumnName("BillState");
            this.Property(t => t.Zip).HasColumnName("BillZip");
            this.Property(t => t.Phone).HasColumnName("BillPhone");
            this.Property(t => t.Fax).HasColumnName("BillFax");
            this.Property(t => t.Contact).HasColumnName("BillContact");
            this.Property(t => t.Email).HasColumnName("BillEmail");
            this.Property(t => t.InputDate).HasColumnName("InputDate");
            this.Property(t => t.InputBy).HasColumnName("InputBy");
            this.Property(t => t.LastModifiedDate).HasColumnName("LastModifiedDate");
            this.Property(t => t.LastModifiedBy).HasColumnName("LastModifiedBy");
            this.Property(t => t.ActiveType).HasColumnName("ActiveType");

            // Relationships
            this.HasRequired(t => t.Client)
                .WithMany(t => t.ClientBillToes)
                .HasForeignKey(d => d.ClientID);

        }
    }
}
