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

public partial class supervisor_complaints : System.Web.UI.Page
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
          string s =  Session["n"].ToString();
          da = new SqlDataAdapter("select sc.scname,e.username,cm.sub,cm.ddesc,cm.rdate,cm.rid,n.login,n.addres,n.cno from tbl_subcategory as sc inner join tbl_complaints as cm on sc.scid=cm.scid inner join tbl_newemp as e on e.uid=cm.uid inner join tbl_newuser as n on cm.nuid=n.nuid where e.uid=" + s + "", con);
        ds = new DataSet();
        da.Fill(ds, "table");
       DataList1.DataSource = ds.Tables["table"];
        DataList1.DataBind();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {


        if (e.CommandName == "Send")
        {

            string s =  Session["n"].ToString();
            da = new SqlDataAdapter("update tbl_complaints set status='Report At Technician' where rid="+e.CommandArgument.ToString()+"", con);
            con.Open();
            int k = da.SelectCommand.ExecuteNonQuery();
            con.Close();
            if (k == 1)
            {
                Response.Write("<script>alert('Report Forward TO Technician')</script>");
                
            }
            else
            {
                Response.Write("<script>alert('Error Occured')</script>");
            }

            
        }
            
    }
}
