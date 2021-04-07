using ProjectWebNangCao.database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ProjectWebNangCao.masterpage
{
    public partial class WebTotal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btDangNhap_Click(object sender, EventArgs e)
        {
            webMytourEntities entities = new webMytourEntities();
            List<Khach_hang> listKhachHang = entities.Khach_hang.ToList<Khach_hang>();
            String taiKhoan = txtTaiKhoan.Text;
            String matKhau = txtMatKhau.Text;
            Boolean isNotAccount = true;
            foreach (Khach_hang kh in listKhachHang)
            {
                if (taiKhoan.Equals(kh.tai_khoan) && (matKhau.Equals(kh.mat_khau)))
                {
                    Response.Redirect("../../html/admin/contentTour-admin.aspx");
                    isNotAccount = false;
                    break;
                }
            }
            if (isNotAccount)
            {
                lbError.Text = "Tài khoản hoặc mật khẩu không đúng!";
            }
        }
    }
}