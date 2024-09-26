using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ASPNETControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) //hàm PageLoad này được gọi khi user refresh lại trang web
        {
            var ctl = Page.LoadControl("WebUserControl_Login.ascx");
            PlaceHolderUserControl.Controls.Add(ctl);
        }

        protected void btnCopy_Click(object sender, EventArgs e)
        {
            txtString2.Text = txtString1.Text;
        }

        protected void btnDangKi_Click(object sender, EventArgs e)
        {
            txtString1.Text = cmbChuyenNganh.Text;
        }
    }
}