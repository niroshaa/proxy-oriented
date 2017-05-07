using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Net.Mail;


public partial class QUES : System.Web.UI.Page
{
    
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader rs;
    Class1 c = new Class1();
    string data, attr;
    string fileid,filename,uid,attri,emailid;
    protected void Page_Load(object sender, EventArgs e)
    {
fileid = Convert.ToString(Session["fileid"]);
      filename = Convert.ToString(Session["filename"]);
      uid = Convert.ToString(Session["u_id"]);
attri = Convert.ToString(Session["attribute"]);
    }
  
 protected void Button1_Click(object sender, EventArgs e)
{


   conn = new SqlConnection(c.constr);
            conn.Open();
            cmd = new SqlCommand();
            cmd.Connection = conn;
            string S = "select * from KEY1 where  ATTRIBUTE like'%" +attri+ "'";
            cmd.CommandText = S;
            rs = cmd.ExecuteReader();
            if (rs.Read())
            {
                Label1.Text = "YOUR DECRYPT KEY IS " + rs.GetValue(3).ToString();
            }
                  else
            {
                Label1.Text = "ATTRIBUTE DOES NOT MATCH ";
             
            }
            rs.Close();
          
        string Q="select MAIL_ID from USEREG where ID='"+uid+"'";
         cmd.CommandText = Q;
            rs = cmd.ExecuteReader();
            if (rs.Read())
            {
                emailid= rs.GetValue(0).ToString();
            }
        rs.Close();
      
           try
        {
            NetworkCredential loginInfo = new NetworkCredential("cloudinfo2016@gmail.com", "cloud@123");
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("cloudinfo2016@gmail.com");
            msg.To.Add(new MailAddress(emailid));
            msg.Subject = "key";
            msg.Body = Label1.Text;
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
            Label1.Text = "problem occurred";
            Response.Write("Exception in sendEmail:" + ex.Message);
        }
        conn.Close();
        }
 protected void Button2_Click(object sender, EventArgs e)
 {
     conn = new SqlConnection(c.constr);
     conn.Open();
     cmd = new SqlCommand();
     cmd.Connection = conn;
     string S = "select * from KEY1 where  ATTRIBUTE like'%" + attri + "'";
     cmd.CommandText = S;
     rs = cmd.ExecuteReader();
     if (rs.Read())
     {
         data = rs.GetValue(2).ToString();
         attr = rs.GetValue(4).ToString();
     }
     rs.Close();
     string Q = "select MAIL_ID from USEREG where ID='" + uid + "'";
     cmd.CommandText = Q;
     rs = cmd.ExecuteReader();
     if (rs.Read())
     {
         emailid = rs.GetValue(0).ToString();
     }
     rs.Close();
     if(TextBox1.Text=="data" && TextBox3.Text=="emailid")
     {
         string script = "alert(\"Verification is done Sucessfully\");";
         ScriptManager.RegisterStartupScript(this, GetType(),
                               "ServerControlScript", script, true);
         Button2.Visible = true;


         conn = new SqlConnection(c.constr);
            conn.Open();
            cmd = new SqlCommand();
            cmd.Connection = conn;
            string S1 = "select * from KEY1 where  ATTRIBUTE like'%" +attri+ "'";
            cmd.CommandText = S1;
            rs = cmd.ExecuteReader();
            if (rs.Read())
            {
                Label1.Text = "YOUR DECRYPT KEY IS " + rs.GetValue(3).ToString();
            }

         NetworkCredential loginInfo = new NetworkCredential("cloudinfo2016@gmail.com", "cloud@123");
         MailMessage msg = new MailMessage();
         msg.From = new MailAddress("cloudinfo2016@gmail.com");
         msg.To.Add(new MailAddress("abisan03@gmail.com"));
         msg.Subject = "key";
         msg.Body = Label1.Text;
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
          script = "alert(\"key  sended successfully\");";
     }
     else
     {
         string script = "alert(\"Invalid Details \");";
         ScriptManager.RegisterStartupScript(this, GetType(),
                               "ServerControlScript", script, true);
       
     }
 }
}


          