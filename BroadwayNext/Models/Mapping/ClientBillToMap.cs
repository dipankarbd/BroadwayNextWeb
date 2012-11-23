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

            this.Property(t => t.BillCompany)
                .HasMaxLength(50);

            this.Property(t => t.BillAddress1)
                .HasMaxLength(50);

            this.Property(t => t.BillAddress2)
                .HasMaxLength(50);

            this.Property(t => t.BillCity)
                .HasMaxLength(50);

            this.Property(t => t.BillState)
                .HasMaxLength(2);

            this.Property(t => t.BillZip)
                .HasMaxLength(10);

            this.Property(t => t.BillPhone)
                .HasMaxLength(20);

            this.Property(t => t.BillFax)
                .HasMaxLength(20);

            this.Property(t => t.BillContact)
                .HasMaxLength(50);

            this.Property(t => t.BillEmail)
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
            this.Property(t => t.BillCompany).HasColumnName("BillCompany");
            this.Property(t => t.BillAddress1).HasColumnName("BillAddress1");
            this.Property(t => t.BillAddress2).HasColumnName("BillAddress2");
            this.Property(t => t.BillCity).HasColumnName("BillCity");
            this.Property(t => t.BillState).HasColumnName("BillState");
            this.Property(t => t.BillZip).HasColumnName("BillZip");
            this.Property(t => t.BillPhone).HasColumnName("BillPhone");
            this.Property(t => t.BillFax).HasColumnName("BillFax");
            this.Property(t => t.BillContact).HasColumnName("BillContact");
            this.Property(t => t.BillEmail).HasColumnName("BillEmail");
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
