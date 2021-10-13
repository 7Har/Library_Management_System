using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagement
{
    public partial class user : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString; //coonnection string 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Database connectivity
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }

                SqlCommand cmd = new SqlCommand("select * from member_tbl where member_id='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                //whether we some get or not in frontend textbox
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('" + dr.GetValue(8).ToString() + "');</script>"); //where 8 is member_id address
                        Session["username"] = dr.GetValue(8).ToString();
                        Session["fullname"] = dr.GetValue(0).ToString();
                        Session["role"] = "user";
                        Session["status"] = dr.GetValue(10).ToString();
                    }
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {

            }

        }
    }
}