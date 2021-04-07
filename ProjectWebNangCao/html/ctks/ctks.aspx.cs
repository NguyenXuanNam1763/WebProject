using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectWebNangCao.database;
using ProjectWebNangCao.model;

namespace ProjectWebNangCao.html.ctks
{
    public partial class ctks : System.Web.UI.Page
    {
        private String ma_tinh;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ma_tinh = Request.QueryString["ma_tinh"].ToString();
            getListData();
        }

        private void getListData()
        {
            webMytourEntities webMytour = new webMytourEntities();
            var itemList = from a in webMytour.Khach_san
                           join b in webMytour.Url_anh
                           on a.id_anh equals b.dc_url
                           join c in webMytour.Ct_phong
                           on a.ma_ks equals c.ma_ks
                           join d in webMytour.Loai_phong
                           on c.ma_loai_phong equals d.ma_loai_phong
                           where a.ma_tinh.ToString().Equals(this.ma_tinh)
                           select new CtksModel()
                           {
                               ten_ks = a.ten_ks,
                               ma_ks = a.ma_ks,
                               dc_url = b.dc_url,
                               dia_chi = a.dia_chi,
                               diem_danh_gia = a.diem_danh_gia,
                               ma_tinh = a.ma_tinh,
                               sl_share = a.sl_share,
                               sl_danh_gia = a.sl_danh_gia,
                               sl_like = a.sl_like,
                               gioi_thieu_ks = a.gioi_thieu_ks,
                               chinh_sach_ks = a.chinh_sach_ks,
                               loai_ks = a.loai_ks,
                               gia_phong=d.gia_phong,


                           };
            List<CtksModel> listNgu = itemList.Take(3).ToList();
            this.rp_ctks_container.DataSource = listNgu;
            this.rp_ctks_container.DataBind();
            this.lbSoKs.Text = listNgu.Count.ToString();
        }
    }
}