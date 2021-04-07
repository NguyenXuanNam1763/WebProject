using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWebNangCao.html.ctks
{
    public partial class ctks_detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                String ma_ks = Request.QueryString["ma_ks"].ToString();
                String ahihi = ma_ks;

            }

        }
    }
}