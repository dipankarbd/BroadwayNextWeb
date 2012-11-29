using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace BroadwayNextWeb.Models.Mapping
{
    public class StateMap : EntityTypeConfiguration<State>
    {
        public StateMap()
        {
            // Primary Key
            this.HasKey(t => new { t.StateID, t.State_Name });

            // Properties
            this.Property(t => t.State_Name)
                .IsRequired()
                .IsFixedLength()
                .HasMaxLength(2);

            this.Property(t => t.Name)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("States");
            this.Property(t => t.StateID).HasColumnName("StateID");
            this.Property(t => t.State_Name).HasColumnName("State");
            this.Property(t => t.Name).HasColumnName("Name");
            this.Property(t => t.ModifyTax).HasColumnName("ModifyTax");
        }
    }
}
