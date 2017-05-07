using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class REGISTER : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader rs;
    Class1 c = new Class1();
    string SEX;
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection(c.constr);
        conn.Open();
        cmd = new SqlCommand();
        cmd.Connection = conn;
        if (DropDownList1.SelectedItem.Text == "SELECT" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "" || TextBox8.Text == "" || TextBox9.Text == "")
        {
            Label2.Visible = true;
            Label2.Text = "Enter all Details";
            Label2.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList1.SelectedItem.Text == "DATAOWNER")
        {
            string S = "insert into DATAREG VALUES('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + SEX + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
            cmd.CommandText = S;
            cmd.ExecuteNonQuery();
            string script = "alert(\"SUCESSFULLY REGISTERED\");";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);

            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            Label2.Text = "";
            Response.Redirect("~/DEFAULT.aspx");
        }
        else if (DropDownList1.SelectedItem.Text == "USER")
        {
            string R = "insert into USEREG VALUES('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + SEX + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
            cmd.CommandText = R;
            cmd.ExecuteNonQuery();
            Label2.Visible = true;
            Label2.Text = "SUCESSFULLY REGISTERED";
            Label2.ForeColor = System.Drawing.Color.Green;

            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            Label2.Text = "";
            Response.Redirect("~/DEFAULT.aspx");
        }
        conn.Close();

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        SEX = "FEMALE";
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        SEX = "MALE";
    }
}