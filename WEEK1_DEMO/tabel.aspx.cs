using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEEK1_DEMO
{
    public partial class tabel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int tblId = 1;

            WEEK1_DEMO.App_Code.table tbl = new WEEK1_DEMO.App_Code.table(tblId);

            tblid.Text = tbl.tbl_id.ToString();
            sect_id.Text = tbl.sect_id.ToString();
            tbl_name.Text = tbl.tbl_name;
            tbl_desc.Text = tbl.tbl_desc;
            tbl_seat_cnt.Text = tbl.tbl_seat_cnt.ToString();
            is_active.Text = tbl.is_active.ToString();


        }
    }
}