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
    
    public partial class Nha_cung_cap
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Nha_cung_cap()
        {
            this.Tours = new HashSet<Tour>();
        }
    
        public string ma_nha_cc { get; set; }
        public string ten_nha_cc { get; set; }
        public string dia_chi_nha_cc { get; set; }
        public Nullable<int> sdt { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tour> Tours { get; set; }
    }
}