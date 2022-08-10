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

public partial class user_Complaints : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != true)
        {
            Getcategory();
            getemployee();
          
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
    private void getemployee()
    {
        da = new SqlDataAdapter("select uid,username from tbl_newemp", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_cd");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_cd"].Rows.Count > 0)
        {
            DropDownList3.DataSource = ds.Tables["tbl_cd"].DefaultView;
            DropDownList3.DataValueField = "uid";
            DropDownList3.DataTextField = "username";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, "--Select--");
        }
    }
    private void subcategory()
    {
        da = new SqlDataAdapter("select scid,scname,cdate from tbl_subcategory where cid="+DropDownList1.SelectedValue+"", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_cd");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_cd"].Rows.Count > 0)
        {
            DropDownList2.DataSource = ds.Tables["tbl_cd"].DefaultView;
            DropDownList2.DataTextField = "scname";
            DropDownList2.DataValueField = "scid";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--Select--");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        subcategory();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         int s = Convert.ToInt32(Session["n"]);
         da = new SqlDataAdapter("insert into tbl_complaints values("+s+"," + DropDownList1.SelectedValue.ToString() + "," + DropDownList2.SelectedValue.ToString() + "," + DropDownList3.SelectedValue.ToString() + ",'" + TextBox1.Text + "','" + TextBox2.Text + "',0,'" + TextBox3.Text + "')", con);
         con.Open();
         int k = da.SelectCommand.ExecuteNonQuery();
         con.Close();
         if (k == 1)
         {
             Response.Write("<script>alert('Report Details Send Succesfully')</script>");
             TextBox3.Text = "";
             TextBox2.Text = "";
             TextBox1.Text = "";
         }
         else
         {
             Response.Write("<script>alert('Error Occured')</script>");
         }
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

        //getemployee();
    }
}

