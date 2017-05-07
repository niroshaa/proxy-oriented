using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class data : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader rs;
    Class1 c = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection(c.constr);
        conn.Open();
        cmd = new SqlCommand();
        cmd.Connection = conn;
        string q = "select * from KEY1 where FILE_ID='" + TextBox1.Text + "'";
        cmd.CommandText = q;
        rs = cmd.ExecuteReader();
        if (rs.Read())
        {
            string script = "alert(\"This File Id is Already Exists!\")";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);
        }
        rs.Close();
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "")
        {
            string script = "alert(\"Enter all Details!\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);
        }

        else
        {
            string s = "insert into KEY1 VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + Label2.Text + "','" + TextBox4.Text + "')";
            cmd.CommandText = s;
            cmd.ExecuteNonQuery();
            string script = "alert(\"SUCESSFULLY REGISTERED!\")";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Label2.Text = "";
            TextBox4.Text = "";


        }
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz";
        char[] CharsString = new char[10];
        Random random = new Random();

        for (int i = 0; i < CharsString.Length; i++)
        {
            CharsString[i] = chars[random.Next(chars.Length)];
        }

        string Result = new String(CharsString);
        Label2.Text = Result;
    }
}