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
    
    public partial class Thanh_toan
    {
        public string tai_khoan { get; set; }
        public string ma_tour { get; set; }
        public string ma_phong { get; set; }
        public Nullable<double> tien_nop { get; set; }
        public Nullable<System.DateTime> tg_nop { get; set; }
    
        public virtual Ct_phong Ct_phong { get; set; }
        public virtual Khach_hang Khach_hang { get; set; }
        public virtual Tour Tour { get; set; }
    }
}
