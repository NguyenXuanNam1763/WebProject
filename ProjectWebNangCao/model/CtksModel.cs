using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectWebNangCao.model
{
    public class CtksModel
    {
        public string ma_ks { get; set; }
        public string ten_ks { get; set; }
        public string dia_chi { get; set; }
        public Nullable<double> diem_danh_gia { get; set; }
        public string ma_tinh { get; set; }
        public Nullable<int> sl_share { get; set; }
        public Nullable<int> sl_like { get; set; }
        public Nullable<int> sl_danh_gia { get; set; }
        public string gioi_thieu_ks { get; set; }
        public string chinh_sach_ks { get; set; }
        public string loai_ks { get; set; }
        public string id_anh { get; set; }
        public string dc_url { get; set; }
        public Nullable<double> gia_phong { get; set; }
    }
}