using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class VendorDocumentMap : EntityTypeConfiguration<VendorDocument>
    {
        public VendorDocumentMap()
        {
            // Primary Key
            this.HasKey(t => t.VendorDocumentID);

            // Properties
            this.Property(t => t.InputBy)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("VendorDocuments");
            this.Property(t => t.VendorDocumentID).HasColumnName("VendorDocumentID");
            this.Property(t => t.DocumentID).HasColumnName("DocumentID");
            this.Property(t => t.VendorID).HasColumnName("VendorID");
            this.Property(t => t.Note).HasColumnName("Note");
            this.Property(t => t.Public).HasColumnName("Public");
            this.Property(t => t.InputBy).HasColumnName("InputBy");
            this.Property(t => t.InputDate).HasColumnName("InputDate");

            // Relationships
            this.HasRequired(t => t.Document)
                .WithMany(t => t.VendorDocuments)
                .HasForeignKey(d => d.DocumentID);
            this.HasRequired(t => t.Vendor)
                .WithMany(t => t.VendorDocuments)
                .HasForeignKey(d => d.VendorID);

        }
    }
}
