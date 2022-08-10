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

public partial class admin_add_designation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != true)
        {
            GetCompaniesdetails();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label cid = new Label();
        cid = (Label)GridView1.Rows[e.RowIndex].Cells[1].FindControl("cid");
        if (cid.Text != "")
        {
            da = new SqlDataAdapter("delete from tbl_adddesig where did=" + Convert.ToInt32(cid.Text) + " ", con);
            con.Open();
            int n = da.SelectCommand.ExecuteNonQuery();
            con.Close();
            if (n == 1)
            {
                GetCompaniesdetails();
            }
        }
    }
    private void GetCompaniesdetails()
    {
        da = new SqlDataAdapter("select *  from tbl_adddesig", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_cd");
        GridView1.DataSource = ds.Tables["tbl_cd"].DefaultView;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            da = new SqlDataAdapter("insert into tbl_adddesig values('" + TextBox1.Text + "',getdate())", con);
            con.Open();
            int n = da.SelectCommand.ExecuteNonQuery();
            con.Close();
            if (n == 1)
            {
                TextBox1.Text = "";
                GetCompaniesdetails();
            }
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
