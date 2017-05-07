using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Drawing;
using System.Net;
using System.Net.Mail;


public partial class csp3 : System.Web.UI.Page
{

    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader rs;
    Class1 c = new Class1();
    string msg, emailid;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.display();
    }
    void display()
    {
        DataTable dt = new DataTable();
        String strConnString = "Data Source=NIROSHE-PC;Initial Catalog=ATTRIBUTE;Integrated Security=True";
        string strQuery = "select user_id,file_id,filename,filesize,name,attribute FROM request";
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
   
    
    protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        conn = new SqlConnection(c.constr);
        conn.Open();
        cmd = new SqlCommand();
        cmd.Connection = conn;
        string S = "select * from KEY1 where  ATTRIBUTE like'%" + GridView2.SelectedRow.Cells[6].Text + "'";
        cmd.CommandText = S;
        rs = cmd.ExecuteReader();
        if (rs.Read())
        {
            Label2.Text = "YOUR DECRYPT KEY IS " + rs.GetValue(3).ToString();
        }
        else
        {
            Label2.Text = "ATTRIBUTE DOES NOT MATCH ";

        }
        rs.Close();

        string Q = "select MAIL_ID from USEREG where ID='" + GridView2.SelectedRow.Cells[1].Text + "'";
        cmd.CommandText = Q;
        rs = cmd.ExecuteReader();
        if (rs.Read())
        {
            emailid = rs.GetValue(0).ToString();
        }
        rs.Close();

        try
        {
              NetworkCredential loginInfo = new NetworkCredential("cloudinfo2016@gmail.com", "cloud@123");
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("cloudinfo2016@gmail.com");
            msg.To.Add(new MailAddress("abisan03@gmail.com"));
            msg.Subject = "key";
            msg.Body = Label2.Text;
            msg.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            System.Net.NetworkCredential networkcred = new System.Net.NetworkCredential();
            networkcred.UserName = "cloudinfo2016@gmail.com";
            networkcred.Password = "cloud@123";
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = networkcred;
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Send(msg);
            string script = "alert(\"key  sended successfully\");";

        }
        catch (Exception ex)
        {
            Label2.Text = "problem occurred";
            Response.Write("Exception in sendEmail:" + ex.Message);
        }
        conn.Close();
    }
}
