using ProjectWebNangCao.database;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWebNangCao.html.admin
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            //string taikhoan = txtTaiKhoan.Text;
            //string matkhau = txtMatKhau.Text;
            //string str_conect = @"Data Source=DESKTOP-U2HC9E9\SQLEXPRESS; Initial Catalog=webMytour; User id = sa; Password=123456";
            //SqlConnection conn = new SqlConnection(str_conect);
            //conn.Open();
            //string query = "select count(*) from Khach_hang where tai_khoan ='" + taikhoan + "' and mat_khau='" + matkhau + "'";

            //SqlCommand cmd = new SqlCommand(query, conn);
            //int so_luong = int.Parse(cmd.ExecuteScalar().ToString());
            //conn.Close();
            //if (so_luong == 1)
            //{
            //    Response.Redirect("contentTour-admin.aspx");
            //}
            //else
            //{
            //    lbError.Text = "Tài khoản hoặc mật khẩu không đúng!";
            //}
            webMytourEntities entities = new webMytourEntities();
            List<Khach_hang> listKhachHang = entities.Khach_hang.ToList<Khach_hang>();
            String taiKhoan = txtTaiKhoan.Text;
            String matKhau = txtMatKhau.Text;
            Boolean isNotAccount = true;
            foreach(Khach_hang kh in listKhachHang)
            {
                if(taiKhoan.Equals(kh.tai_khoan) && (matKhau.Equals(kh.mat_khau))){
                    Response.Redirect("contentTour-admin.aspx");
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