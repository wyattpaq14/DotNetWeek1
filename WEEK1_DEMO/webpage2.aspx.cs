using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEEK1_DEMO
{
    public partial class webpage2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            List<MenuItem> MenuItems = new List<MenuItem>();
            MenuItems.Add(new MenuItem("Item 1", "", "", "~/Home"));
            MenuItems.Add(new MenuItem("Item 2", "", "", "~/Home"));

            //Set menu items
            foreach (MenuItem mi in MenuItems)
            {
                testNav.Items.Add(mi);
            }
        }
    }
}