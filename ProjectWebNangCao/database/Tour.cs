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
    
    public partial class Tour
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tour()
        {
            this.Thanh_toan = new HashSet<Thanh_toan>();
            this.Url_anh = new HashSet<Url_anh>();
            this.Khach_hang = new HashSet<Khach_hang>();
            this.Dia_diem = new HashSet<Dia_diem>();
            this.Loai_tour = new HashSet<Loai_tour>();
            this.Nha_cung_cap = new HashSet<Nha_cung_cap>();
            this.Phuong_tien = new HashSet<Phuong_tien>();
        }
    
        public string ma_tour { get; set; }
        public string ten_tour { get; set; }
        public Nullable<System.DateTime> ngay_kh { get; set; }
        public string diem_kh { get; set; }
        public string gioi_thieu_tour { get; set; }
        public string thoi_gian { get; set; }
        public string lich_trinh { get; set; }
        public string khuyen_mai_tour { get; set; }
        public string ma_tt { get; set; }
        public Nullable<int> sl_hientai { get; set; }
        public Nullable<int> sl_toida { get; set; }
        public Nullable<double> gia_tour { get; set; }
        public Nullable<int> danh_gia_tour { get; set; }
        public Nullable<int> sl_chia_se { get; set; }
        public Nullable<int> sl_thich { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Thanh_toan> Thanh_toan { get; set; }
        public virtual Trang_thai Trang_thai { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Url_anh> Url_anh { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Khach_hang> Khach_hang { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Dia_diem> Dia_diem { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Loai_tour> Loai_tour { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Nha_cung_cap> Nha_cung_cap { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Phuong_tien> Phuong_tien { get; set; }
    }
}