//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjectWebNangCao.database
{
    using System;
    using System.Collections.Generic;
    
    public partial class Dia_diem
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Dia_diem()
        {
            this.Cam_nang = new HashSet<Cam_nang>();
            this.Tours = new HashSet<Tour>();
        }
    
        public string ma_dd { get; set; }
        public string ten_dd { get; set; }
        public string ma_tinh { get; set; }
        public string mo_ta_dd { get; set; }
        public string id_anh { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Cam_nang> Cam_nang { get; set; }
        public virtual Tinh Tinh { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tour> Tours { get; set; }
    }
}