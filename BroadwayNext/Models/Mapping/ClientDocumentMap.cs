using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class ClientDocumentMap : EntityTypeConfiguration<ClientDocument>
    {
        public ClientDocumentMap()
        {
            // Primary Key
            this.HasKey(t => t.ClientDocumentID);

            // Properties
            this.Property(t => t.InputBy)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("ClientDocuments");
            this.Property(t => t.ClientDocumentID).HasColumnName("ClientDocumentID");
            this.Property(t => t.DocumentID).HasColumnName("DocumentID");
            this.Property(t => t.ClientID).HasColumnName("ClientID");
            this.Property(t => t.OrderAttachment).HasColumnName("OrderAttachment");
            this.Property(t => t.Public).HasColumnName("Public");
            this.Property(t => t.InputBy).HasColumnName("InputBy");
            this.Property(t => t.InputDate).HasColumnName("InputDate");
            this.Property(t => t.Comments).HasColumnName("Comments");

            // Relationships
            this.HasRequired(t => t.Client)
                .WithMany(t => t.ClientDocuments)
                .HasForeignKey(d => d.ClientID);
            this.HasRequired(t => t.Document)
                .WithMany(t => t.ClientDocuments)
                .HasForeignKey(d => d.DocumentID);

        }
    }
}
