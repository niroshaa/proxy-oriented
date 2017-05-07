using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class user1 : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader rs;
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    void display()
    {
        DataTable dt = new DataTable();
        String strConnString = "Data Source=NIROSHE-PC;Initial Catalog=ATTRIBUTE;Integrated Security=True";
        string strQuery = "select FILE_ID,D_NAME,FILENAME,FILEPATH,FILESIZE,FILEPATH,FILESIZE FROM FILE_details WHERE FILENAME='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand(strQuery);
        SqlConnection con = new SqlConnection(strConnString);
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["fileid"] = Convert.ToString(GridView2.SelectedRow.Cells[1].Text);
        Session["filename"] = Convert.ToString(GridView2.SelectedRow.Cells[3].Text);
        Session["filesize"] = Convert.ToString(GridView2.SelectedRow.Cells[5].Text);
        Response.Redirect("user23.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.display();
    }
}