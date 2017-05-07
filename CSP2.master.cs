using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CSP : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("homecsp.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        Response.Redirect("csp1.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("csp2.aspx");
    }
    protected void LinkButton5_Click1(object sender, EventArgs e)
    {
        Response.Redirect("HOME2.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("csp3.aspx");
    }
}
