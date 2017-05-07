using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
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


        if (DropDownList1.SelectedItem.Text == "SELECT" || TextBox1.Text == "" || TextBox2.Text == "")
        {
            Label3.Visible = true;
            Label3.Text = "Invalid UserName and Password";
            Label3.ForeColor = System.Drawing.Color.Red;
        }
        else if (DropDownList1.SelectedItem.Text == "CSP")
        {
            if (TextBox1.Text == "CSP" && TextBox2.Text == "CSP")
            {
                Response.Redirect("~/HOMECSP.aspx");
            }
            else
            {
             
                Label3.Visible = true;
                Label3.Text = "Enter correct UserName and Password";
                Label3.ForeColor = System.Drawing.Color.Red;
            }
        }
        else if (DropDownList1.SelectedItem.Text == "KEY AUTHORITY")
        {
            if (TextBox1.Text == "KEY" && TextBox2.Text == "KEY")
            {
                Response.Redirect("~/HOMEKEY.aspx");
            }
            else
            {
                rs.Close();
                Label3.Visible = true;
                Label3.Text = "Enter correct UserName and Password";
                Label3.ForeColor = System.Drawing.Color.Red;
            }
        }

        else if (DropDownList1.SelectedItem.Text == "DATA OWNER")
        {

            string q = "select * from DATAREG where USERNAME='" + TextBox1.Text + "' and PWD='" + TextBox2.Text + "'";
            cmd.CommandText = q;
            rs = cmd.ExecuteReader();
            if (rs.Read())
            {
                rs.Close();
                Response.Redirect("~/HOMEDATA.aspx");
            }
                else
                {
                    rs.Close();
                Label3.Visible = true;
            Label3.Text = "Enter correct UserName and Password";
            Label3.ForeColor = System.Drawing.Color.Red;
                }
            


        }

        else if (DropDownList1.SelectedItem.Text == "USER")
        {

            string r = "select * from USEREG where USERNAME='" + TextBox1.Text + "' and PWD='" + TextBox2.Text + "'";
            cmd.CommandText = r;
            rs = cmd.ExecuteReader();


            if (rs.Read())
            {
                rs.Close();
                Response.Redirect("~/HOMEUSER.aspx");
            }
            else
            {
                rs.Close();
                Label3.Visible = true;
                Label3.Text = "Enter correct UserName and Password";
                Label3.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/REGISTER.aspx");
    }
}