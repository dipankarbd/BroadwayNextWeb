using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class DocumentMap : EntityTypeConfiguration<Document>
    {
        public DocumentMap()
        {
            // Primary Key
            this.HasKey(t => t.DocumentID);

            // Properties
            this.Property(t => t.FileName)
                .HasMaxLength(100);

            this.Property(t => t.FileExtension)
                .HasMaxLength(10);

            this.Property(t => t.Comment)
                .HasMaxLength(50);

            this.Property(t => t.InputBy)
                .HasMaxLength(50);

            this.Property(t => t.LastModifiedBy)
                .HasMaxLength(50);

            this.Property(t => t.DocumentPath)
                .HasMaxLength(500);

            // Table & Column Mappings
            this.ToTable("Document");
            this.Property(t => t.DocumentID).HasColumnName("DocumentID");
            this.Property(t => t.RecordNumber).HasColumnName("RecordNumber");
            this.Property(t => t.DocumentTypeID).HasColumnName("DocumentTypeID");
            this.Property(t => t.FileName).HasColumnName("FileName");
            this.Property(t => t.FileExtension).HasColumnName("FileExtension");
            this.Property(t => t.DateImported).HasColumnName("DateImported");
            this.Property(t => t.FileData).HasColumnName("FileData");
            this.Property(t => t.ActiveType).HasColumnName("ActiveType");
            this.Property(t => t.Comment).HasColumnName("Comment");
            this.Property(t => t.Public).HasColumnName("Public");
            this.Property(t => t.InputBy).HasColumnName("InputBy");
            this.Property(t => t.InputDate).HasColumnName("InputDate");
            this.Property(t => t.LastModifiedBy).HasColumnName("LastModifiedBy");
            this.Property(t => t.LastModifiedDate).HasColumnName("LastModifiedDate");
            this.Property(t => t.DocumentPath).HasColumnName("DocumentPath");

            // Relationships
            this.HasOptional(t => t.DocumentType)
                .WithMany(t => t.Documents)
                .HasForeignKey(d => d.DocumentTypeID);

        }
    }
}
