using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class user3 : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader rs;
    Class1 c = new Class1();
    string key;
    protected void Page_Load(object sender, EventArgs e)
    {
        key = generatekey();
    }
    private string generatekey()
    {
        DESCryptoServiceProvider descrypto = (DESCryptoServiceProvider)DESCryptoServiceProvider.Create();
        return ASCIIEncoding.ASCII.GetString(descrypto.Key);
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        string input = Server.MapPath("~/Files/Dropbox/Files/") + TextBox4.Text + "_enc" + Label3.Text;
        string output = Server.MapPath("~/Files/Dropbox/Files/") + TextBox4.Text + "_dec" + Label3.Text;

        this.decrypt(input, output, key);


        //Download the Decrypted File. 


        Response.Clear();
        Response.ContentType = "application/octet-stream";
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(output));

        Response.WriteFile(output);
        Response.Flush();

    }
    private void decrypt(string inputFilePath, string outputfilePath, string strhash)
    {
        strhash = TextBox1.Text;
        FileStream instream, outstream;
        CryptoStream crystream;
        TripleDESCryptoServiceProvider tdc = new TripleDESCryptoServiceProvider();
        MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();

        byte[] bytehash, bytetext;
        instream = new FileStream(inputFilePath, FileMode.Open, FileAccess.Read);
        outstream = new FileStream(outputfilePath, FileMode.Create, FileAccess.Write);

        bytehash = md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(strhash));
        bytetext = File.ReadAllBytes(inputFilePath);
        md5.Clear();

        tdc.Key = bytehash;
        tdc.Mode = CipherMode.ECB;
        crystream = new CryptoStream(outstream, tdc.CreateDecryptor(), CryptoStreamMode.Write);
        int bytesread;
        long length, position = 0;
        length = instream.Length;

        bytetext = File.ReadAllBytes(inputFilePath);
        while (position < length)
        {
            bytesread = instream.Read(bytetext, 0, bytetext.Length);
            position += bytesread;
            crystream.Write(bytetext, 0, bytesread);
        }
        instream.Close();
        outstream.Close();
    }
  
    protected void Button2_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection(c.constr);
        conn.Open();
        cmd = new SqlCommand();
        cmd.Connection = conn;
        string R = "select * from FILE_details where KEY1 = '" + TextBox1.Text + "'";
        cmd.CommandText = R;
        rs = cmd.ExecuteReader();
        if (rs.Read())
        {
            TextBox2.Text = rs.GetValue(0).ToString();
            TextBox3.Text = rs.GetValue(3).ToString();
            TextBox4.Text = rs.GetValue(2).ToString();
            Label3.Text = rs.GetValue(7).ToString();
        }

        else
        {
            string script = "alert(\"PLEASE ENTER CORRECT KEY!\")";
            ScriptManager.RegisterStartupScript(this, GetType(),
                                  "ServerControlScript", script, true);
        }

        rs.Close();
        conn.Close();
       
    }
}