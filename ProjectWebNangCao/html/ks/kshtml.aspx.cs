
using ProjectWebNangCao.database;
using ProjectWebNangCao.model;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWebNangCao.html.ks
{
    public partial class kshtml : System.Web.UI.Page
    {
        List<DiaDiemModelCustom> listVn=new List<DiaDiemModelCustom>();
        List<DiaDiemModelCustom> listNN=new List<DiaDiemModelCustom>();
        protected void Page_Load(object sender, EventArgs e)
        {
            List<DiaDiemModelCustom> listDiadiem = getPlace();

            for (int i = 0; i < listDiadiem.Count; i++)
            {
                if (i <= 11)
                {
                    listVn.Add(listDiadiem[i]);
                }
                else
                {
                    listNN.Add(listDiadiem[i]);
                }
            }
            rpProduct.DataSource = listVn;
            rpProduct.DataBind();
            rpForeign.DataSource = listNN;
            rpForeign.DataBind();
        }

        void getPlaceDomestic()
        {
            webMytourEntities entities = new webMytourEntities();
            List<Dia_diem> listDiadiem = (from diadiem in entities.Dia_diem select diadiem).Take(12).ToList();
            rpProduct.DataSource = listDiadiem;
            rpProduct.DataBind();


        }

        public List<DiaDiemModelCustom> getPlace()
        {
            webMytourEntities entities = new webMytourEntities();
            var listItem = from a in entities.Dia_diem
                           join b in entities.Url_anh
                           on a.id_anh equals b.id_anh
                           select new DiaDiemModelCustom()
                           {
                               ma_dd = a.ma_dd,
                               ten_dd = a.ten_dd,
                               mo_ta_dd = a.mo_ta_dd,
                               dc_url = b.dc_url,
                               ma_tinh=a.ma_tinh,
                           };
            return listItem.ToList();
        }
    }
}