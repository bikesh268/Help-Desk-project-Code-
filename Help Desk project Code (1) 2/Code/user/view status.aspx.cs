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
using System.IO;

public partial class user_view_status : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
      
    
    protected void Button1_Click(object sender, EventArgs e)
    {

        da = new SqlDataAdapter("select cm.status,tc.sendstatus,tc.rfile,tc.rdate from tbl_complaints  as cm inner join tbl_techreport as tc on cm.rid=tc.rid where cm.rid=" + TextBox1.Text + "", con);
        ds = new DataSet();
        da.Fill(ds, "table");
        if (ds.Tables["table"].Rows.Count > 0)
        {
            DataList1.DataSource = ds.Tables["table"];
            DataList1.DataBind();
            Label18.Text = ds.Tables["table"].Rows[0][2].ToString();
        }
        else
        {
            Response.Write("<script>alert('Sorry For Late We Will Getback To You')</script>");
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            if (Label18.Text != "")
            {
                string filename = Path.GetFileName(Label18.Text);
                Response.AppendHeader("Content-Disposition", "attachments;FileName=" + filename);
                Response.ContentType = "text/plain";
                Response.WriteFile("~/attachments/" + filename);
                Response.End();
            }
           
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
