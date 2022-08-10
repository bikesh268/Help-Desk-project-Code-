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

public partial class user_profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != true)
        {
            getdetails();
        }
    }
    private void getdetails()
    {
        string s = Session["n"].ToString();
        da = new SqlDataAdapter("select * from tbl_newuser where nuid=" + s + "", con);
        ds = new DataSet();
        da.Fill(ds, "table");
        FormView1.DataSource = ds.Tables["table"];
        FormView1.DataBind();
    }
}
