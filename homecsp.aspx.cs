using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class homecsp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "CSP" && TextBox2.Text == "csp")
        {
            Response.Redirect("~/csp1.aspx");
        }
        else
        {

            Label3.Visible = true;
            Label3.Text = "Enter correct UserName and Password";
            Label3.ForeColor = System.Drawing.Color.Red;
        }

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}