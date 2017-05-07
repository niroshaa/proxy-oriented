using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class csp1 : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader rs;
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.display();
    }
    void display()
    {
        DataTable dt = new DataTable();
        String strConnString = "Data Source=NIROSHE-PC;Initial Catalog=ATTRIBUTE;Integrated Security=True";
        string strQuery = "select ID,NAME,DOB,CONTACTNO,ADDRESS,MAIL_ID FROM DATAREG";
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
}