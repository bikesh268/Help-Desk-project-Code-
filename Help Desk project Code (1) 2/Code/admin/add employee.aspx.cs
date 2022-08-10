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

public partial class admin_add_employee : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != true)
        {
            Getcategory();
         
        }
    }
    private void Getcategory()
    {
        da = new SqlDataAdapter("select did,dname,cdate from tbl_adddesig", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_cd");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_cd"].Rows.Count > 0)
        {
            DropDownList1.DataSource = ds.Tables["tbl_cd"].DefaultView;
            DropDownList1.DataTextField = "dname";
            DropDownList1.DataValueField = "did";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--Select--");
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        da = new SqlDataAdapter("insert into tbl_newemp values(" + DropDownList1.SelectedValue + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + ",'" + TextBox6.Text + "','" + TextBox7.Text + "')", con);
        con.Open();
        int n = da.SelectCommand.ExecuteNonQuery();
        con.Close();
        if (n == 1)
        {
            Response.Write("<script>alert('Employee Details Added Succesfully')</script>");
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
        }
        else
        {
            Response.Write("<script>alert('Error Occured')</script>");
        }
    }
}
