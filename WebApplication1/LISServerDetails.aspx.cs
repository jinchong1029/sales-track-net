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
    public partial class admin1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        // Add button 
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkLISExists())
            {
                Response.Write("<script> alert(' LIS software version with this ID already Exist. You cannot add another Author with the same LIS version ID');</script>");
            }
        }
        // update button 
        protected void Button3_Click(object sender, EventArgs e)
        {

        }
        // delete button 
        protected void Button4_Click(object sender, EventArgs e)
        {

        }
        //go button 
        protected void Button1_Click(object sender, EventArgs e)
        {
            checkLISExists();
        }
        void addNewVersion()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM[Compatibility].[dbo].[LISServerSoftware] where LISID = '" + TextBox1.Text.Trim() + "' ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                   // return true;
                }
                else
                {
                    //return false;
                }

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "');</script>");
                //return false;
            }
        }
        bool checkLISExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM[Compatibility].[dbo].[LISServerSoftware] where LISID = '" +  TextBox1.Text.Trim() + "' ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt); 
                
                if (dt.Rows.Count>=1)
                {
                    return true; 
                }
                else
                {
                    return false; 
                }

               
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "');</script>");

                return false; 
            }
        }
    }
    //WHO AM I ? 
    }
