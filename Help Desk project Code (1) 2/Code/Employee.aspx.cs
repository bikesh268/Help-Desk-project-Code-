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
public partial class Employee : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        da=new SqlDataAdapter("select uid from tbl_newemp where username='" + TextBox1.Text + "'and pwd='" + TextBox2.Text + "'", con);
        ds = new DataSet();
        da.Fill(ds, "table");
        if (ds.Tables["table"].Rows.Count>0)
        {
            if (DropDownList1.SelectedItem.Text == "Supervisor" && DropDownList1.SelectedValue == "1")
            {
                Session.Add("n",ds.Tables["table"].Rows[0][0].ToString());
                Session.Add("login", TextBox1.Text);
                Response.Redirect("~/supervisor/profile.aspx");
            }
            else
            {
                Session.Add("n", ds.Tables["table"].Rows[0][0].ToString());
                Session.Add("login", TextBox1.Text);
                Response.Redirect("~/technician/profile.aspx");
            }
        }
        else
        {
           
            Response.Write("You Are Not Valid User");
        }
    
    }
}
