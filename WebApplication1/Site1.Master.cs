using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //    try
            //    {


            //        if (Session["role"].Equals("admin"))
            //        {
            //            LinkButton1.Visible = false; //admin
            //            LinkButton2.Visible = true; //hello user
            //            LinkButton2.Text = "Hello " + Session["Name"].ToString(); //hello user
            //            LinkButton3.Visible = true; //logout
            //        }
            //        else
            //        {
            //            LinkButton1.Visible = true; //admin
            //            LinkButton2.Visible = false; //hello user
            //            LinkButton3.Visible = false; //logout

            //        }
            //    }
            //    catch (Exception ex)
            //    {

            //        throw;
            //    }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

        }
    }
}