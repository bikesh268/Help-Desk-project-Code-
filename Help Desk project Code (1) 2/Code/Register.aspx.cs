using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd= new SqlCommand("insert into tbl_newuser values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + ",'" + TextBox6.Text + "','" + TextBox7.Text + "')", con);
       con.Open();
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n == 1)
        {
            Response.Redirect("~/Client.aspx");
           
        }
        else
        {
            Response.Write("<script>alert('Error Occured')</script>");
        }
    }
}
