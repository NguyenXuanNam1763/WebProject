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
    
    public partial class Tinh
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tinh()
        {
            this.Dia_diem = new HashSet<Dia_diem>();
            this.Khach_san = new HashSet<Khach_san>();
        }
    
        public string ma_tinh { get; set; }
        public string ten_tinh { get; set; }
        public string gioi_thieu_tinh { get; set; }
        public string anh { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Dia_diem> Dia_diem { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Khach_san> Khach_san { get; set; }
    }
}