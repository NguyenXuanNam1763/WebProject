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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class webMytourEntities : DbContext
    {
        public webMytourEntities()
            : base("name=webMytourEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Cam_nang> Cam_nang { get; set; }
        public virtual DbSet<Ct_phong> Ct_phong { get; set; }
        public virtual DbSet<Dia_diem> Dia_diem { get; set; }
        public virtual DbSet<Dia_diem_gan_ks> Dia_diem_gan_ks { get; set; }
        public virtual DbSet<Khach_hang> Khach_hang { get; set; }
        public virtual DbSet<Khach_san> Khach_san { get; set; }
        public virtual DbSet<Loai_phong> Loai_phong { get; set; }
        public virtual DbSet<Loai_tour> Loai_tour { get; set; }
        public virtual DbSet<Nha_cung_cap> Nha_cung_cap { get; set; }
        public virtual DbSet<Phuong_tien> Phuong_tien { get; set; }
        public virtual DbSet<Quyen_truy_cap> Quyen_truy_cap { get; set; }
        public virtual DbSet<Thanh_toan> Thanh_toan { get; set; }
        public virtual DbSet<Tien_nghi> Tien_nghi { get; set; }
        public virtual DbSet<Tinh> Tinhs { get; set; }
        public virtual DbSet<Tour> Tours { get; set; }
        public virtual DbSet<Trang_thai> Trang_thai { get; set; }
        public virtual DbSet<Tuy_chon> Tuy_chon { get; set; }
        public virtual DbSet<Url_anh> Url_anh { get; set; }
    }
}
