using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class admin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Response.Write("<script> alert('Button Clicked');</script>");

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from Admin where ID='"+ TextBox1.Text.Trim()+ "' and Password='" + TextBox2.Text.Trim() + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script> alert('Login Successfully');</script>");
                        Session["ID"] = dr.GetValue(0).ToString();
                        Session["Name"] = dr.GetValue(2).ToString();
                        Session["role"] = "admin";

                    }
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    Response.Write("<script> alert('Invalid credentials');</script>");
                }
               
                con.Close();
            }
            catch (Exception ex) {
                Response.Write("<script> alert('" + ex.Message + "');</script>");
            }
        }
    }
}