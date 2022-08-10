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

public partial class admin_add_sub_category : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != true)
        {
            Getcategory();
            subcategory();
        }
    }
    private void Getcategory()
    {
        da = new SqlDataAdapter("select cid,cname,cdate from tbl_addcategory", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_cd");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_cd"].Rows.Count > 0)
        {
            DropDownList1.DataSource = ds.Tables["tbl_cd"].DefaultView;
            DropDownList1.DataTextField = "cname";
            DropDownList1.DataValueField = "cid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--Select--");
        }
    }
    private void subcategory()
    {
        da = new SqlDataAdapter("select sc.scid,sc.scname,sc.cdate,c.cname from  tbl_subcategory as sc inner join tbl_addcategory as c on sc.cid=c.cid", con);
        ds = new DataSet();
        da.Fill(ds, "table");
        GridView1.DataSource = ds.Tables["table"];
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex > 0)
        {
            da = new SqlDataAdapter("insert into tbl_subcategory values(" + Convert.ToInt32(DropDownList1.SelectedValue) + ",'"+TextBox1.Text+"',getdate())", con);
            con.Open();
            int n = da.SelectCommand.ExecuteNonQuery();
            con.Close();
            if (n == 1)
            {
                subcategory();
                             
            }
        }
    }
    
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
