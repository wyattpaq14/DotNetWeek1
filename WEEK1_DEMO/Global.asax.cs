using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;
using System.Web.Optimization;


namespace WEEK1_DEMO
{
	public class Global : System.Web.HttpApplication
	{
		protected void Application_Start(object sender, EventArgs e)
		{
			RegisterRoutes(RouteTable.Routes);
				
		}



		public static void RegisterRoutes(RouteCollection routes)
		{
            routes.MapPageRoute("Home", "Home", "~/Default.aspx");
            routes.MapPageRoute("Test-Page", "Nested-Folder/Test-Page", "~/webpage2.aspx");


		}




	}
}