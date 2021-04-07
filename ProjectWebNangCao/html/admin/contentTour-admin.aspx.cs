using ProjectWebNangCao.database;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWebNangCao.html.admin
{
    public partial class contentTour_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getData();
            }
        }
        public void getData()
        {
            // Lấy dữ liệu hiển thị lên DataGridview
            webMytourEntities db = new webMytourEntities();
            List<Tour> data = db.Tours.ToList<Tour>();
            gridviewTour.DataSource = data;
            //Render
            gridviewTour.DataBind();

        }
        //public string getten_tour(object ma_tour)
        //{
        //    webMytourEntities db = new webMytourEntities();
        //    Tour obj = db.Tour.FirstOrDefault(x => x.ma_tour == ma_tour);
        //}

        protected void btnXoa_Command(Object sender, CommandEventArgs e)
        {
            string ma_tour = e.CommandArgument.ToString();
            webMytourEntities db = new webMytourEntities();
            Tour obj = db.Tours.FirstOrDefault(x => x.ma_tour == ma_tour);
            if (obj != null)
            {
                db.Tours.Remove(obj);
                db.SaveChanges();
                getData();
            }
        }
        protected void btn_sua(Object sender, CommandEventArgs eventArgs)
        {
            string ma_tour = eventArgs.CommandArgument.ToString();
            webMytourEntities db = new webMytourEntities();
            Tour obj = db.Tours.FirstOrDefault(x => x.ma_tour == ma_tour);

        }

        //=> update model tour values and save in database
        private void updateTour(Tour tour)
        {
            webMytourEntities entities = new webMytourEntities();
            if (isObjNull(entities))
            {
                return;
            }
            if (isObjNull(tour))
            {
                return;
            }
            entities.Entry(tour).State = EntityState.Modified;
            entities.SaveChanges();
            getData();
        }


        //=> insert the model Tour to database
        private void insertTour(Tour tour)
        {
            webMytourEntities entities = new webMytourEntities();
            if(isObjNull(entities))
            {
                return;
            }
            if(isObjNull(tour))
            {
                return;
            }
            entities.Tours.Add(tour);
            entities.SaveChanges();

        }


        //=> check null object
        private Boolean isObjNull(Object obj)
        {
            if (obj == null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //=> default values
        protected void gridviewTour_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            getData();
        }


        //=> click editing
        protected void gridviewTour_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gridviewTour.EditIndex = e.NewEditIndex;
            getData();

        }


        //=> click cancel edit
        protected void gridviewTour_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridviewTour.EditIndex = -1;
            getData();
        }

        protected void gridviewTour_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridView gv = (GridView)sender;
            GridViewRow gvRow = gv.Rows[e.RowIndex];
           
            //=> get data from textbox
            string maTour = (gvRow.FindControl("lbMaTour") as Label).Text;
            string tenTour = (gvRow.FindControl("tbTenTour") as TextBox).Text;
            string ngKh= (gvRow.FindControl("tbNgayKh") as TextBox).Text;
            string diemKh= (gvRow.FindControl("tbDiemKh") as TextBox).Text;
            string gioiThieu= (gvRow.FindControl("tbGioiThieu") as TextBox).Text;
            string thoiGian= (gvRow.FindControl("tbThoiGian") as TextBox).Text;
            string lichTrinh= (gvRow.FindControl("tbLinhTrinh") as TextBox).Text;
            string khuyenMai= (gvRow.FindControl("tbKhuyenMai") as TextBox).Text;
            string giaTour= (gvRow.FindControl("tbGiaTour") as TextBox).Text;
            string danhGia= (gvRow.FindControl("danhGia") as Label).Text;
            string slChiaSe = (gvRow.FindControl("slChiaSe") as Label).Text;
            string slThich = (gvRow.FindControl("lbSlThich") as Label).Text;

            //=> insert data to tour model
            Tour tour = new Tour();
            tour.ma_tour = maTour;
            tour.ten_tour = tenTour;
            tour.ngay_kh = Convert.ToDateTime(ngKh);
            tour.diem_kh = diemKh;
            tour.gioi_thieu_tour = gioiThieu;
            tour.thoi_gian = thoiGian;
            tour.lich_trinh = lichTrinh;
            tour.khuyen_mai_tour = khuyenMai;
            tour.gia_tour = Convert.ToInt32(giaTour);
            tour.danh_gia_tour = Convert.ToInt32(danhGia);
            tour.sl_chia_se = Convert.ToInt32(slChiaSe);
            tour.sl_thich = Convert.ToInt32(slThich);
            updateTour(tour);
            gridviewTour.EditIndex = -1;
            getData();
        }
    }
}