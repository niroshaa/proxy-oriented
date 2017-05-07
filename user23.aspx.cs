using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class user23 : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader rs;
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox6.Text = Convert.ToString(Session["fileid"]);
        TextBox2.Text = Convert.ToString(Session["filename"]);
        TextBox3.Text = Convert.ToString(Session["filesize"]);
        Session["u_id"] = TextBox7.Text;
        Session["attribute"] = TextBox5.Text;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection(c.constr);
        conn.Open();
        cmd = new SqlCommand();
        cmd.Connection = conn;
        string S = "insert into request VALUES('" + TextBox7.Text + "','" + TextBox6.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
        cmd.CommandText = S;
        cmd.ExecuteNonQuery();
        conn.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("QUES.aspx");
    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
}