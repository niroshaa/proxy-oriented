using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class homedata : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader rs;
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection(c.constr);
        conn.Open();
        cmd = new SqlCommand();
        cmd.Connection = conn;
        string r = "select * from DATAREG where NAME='" + TextBox1.Text + "' and PWD='" + TextBox2.Text + "'";
        cmd.CommandText = r;
        rs = cmd.ExecuteReader();
        if (rs.Read())
        {
            rs.Close();
            Response.Redirect("~/data.aspx");
        }
        else
        {
            rs.Close();
            Label3.Visible = true;
            Label3.Text = "Enter correct UserName and Password";
            Label3.ForeColor = System.Drawing.Color.Red;
        }

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}