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

public partial class technician_sendstatus : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;
    string iname;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 0)
        {
            Label1.Text = Request.QueryString[0].ToString();
        }
        //if (Page.IsPostBack != true)
        //{
        //    getdetails();
        //}
    }
    //private void getdetails()
    //{
    //    string s = Session["n"].ToString();
    //    da = new SqlDataAdapter("select sc.scname,e.username,cm.sub,cm.ddesc,cm.rdate,cm.rid,n.login,n.addres,n.cno from tbl_subcategory as sc inner join tbl_complaints as cm on sc.scid=cm.scid inner join tbl_newemp as e on e.uid=cm.uid inner join tbl_newuser as n on cm.nuid=n.nuid where cm.status='Report At Technician'", con);
    //    ds = new DataSet();
    //    da.Fill(ds, "table");
    //    DataList1.DataSource = ds.Tables["table"];
    //    DataList1.DataBind();
    //}
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            string image = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~\\attachments\\" + image.ToString()));
            iname = "~/attachments/" + image.ToString();
            cmd = new SqlCommand("insert into tbl_techreport values("+Label1.Text+",'"+TextBox2.Text+"','" + iname + "','"+TextBox2.Text+"')", con);
            con.Open();
            int k = cmd.ExecuteNonQuery();
            con.Close();
            if (k == 1)
            {
                da = new SqlDataAdapter("update tbl_complaints set status='Response Sended Sucesfully' where rid=" +Label1.Text + "", con);
                con.Open();
                int m = da.SelectCommand.ExecuteNonQuery();
                con.Close();
                if (m == 1)
                {
                    Response.Write("<script>alert('Status Sended Successfully')</script>");
                }
                

            }
            else
            {
                Response.Write("<script>alert('Error Occured')</script>");

            }
        }
    }
}
