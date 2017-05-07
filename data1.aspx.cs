using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class data1 : System.Web.UI.Page
{

    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader rs;
    Class1 c = new Class1();
    Class2 c1 = new Class2();
    string key;
    string status1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        conn = new System.Data.SqlClient.SqlConnection(c.constr);
        conn.Open();
        cmd = new System.Data.SqlClient.SqlCommand();
        cmd.Connection = conn;
        string R = "insert into FILE_details VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox7.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + Label3.Text + "')";
        cmd.CommandText = R;
        cmd.ExecuteNonQuery();
   
        string script = "alert(\"SUCESSFULLY UPLOADED\");";
        ScriptManager.RegisterStartupScript(this, GetType(),
                              "ServerControlScript", script, true);
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox7.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";

        Label3.Text = "";
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        conn = new System.Data.SqlClient.SqlConnection(c.constr);
        conn.Open();
        cmd = new System.Data.SqlClient.SqlCommand();
        cmd.Connection = conn;
        string Q = "select * from KEY1 where FILE_ID='" + TextBox1.Text + "'";
        cmd.CommandText = Q;
        rs = cmd.ExecuteReader();
        if (rs.Read())
        {
            TextBox2.Text = rs.GetValue(2).ToString();
            TextBox3.Text = rs.GetValue(1).ToString();
            TextBox6.Text = rs.GetValue(3).ToString();

        }
        rs.Close();
        conn.Close();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string fileName = System.IO.Path.GetFileNameWithoutExtension(FileUpload1.PostedFile.FileName);
        string fileExtension = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
        Label3.Text = fileExtension;
        FileUpload1.SaveAs(Server.MapPath("Files/Dropbox/Files/" + fileName + fileExtension));
        string input = Server.MapPath("~/Files/Dropbox/Files/") + fileName + fileExtension;
        string output = Server.MapPath("~/Files/Dropbox/Files/") + TextBox3.Text + "_enc" + Label3.Text;

        TextBox7.Text = output;

        if (FileUpload1.HasFile)
        {
            long fileSize = FileUpload1.FileContent.Length;
            TextBox4.Text = fileSize.ToString();
        }
        TextBox5.Text = DateTime.Now.ToString();



        this.encrypt(input, output, key);

    }


    public void upload()
    {
      string  filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.SaveAs(Server.MapPath("~/Files/" + filename));
        Response.Write("File uploaded sucessfully.");

        c1.encrypt(Server.MapPath("~/Files/" + filename), Server.MapPath("~/Files/Dropbox/Encrypted/" + filename));
       string path2 = "Files/Dropbox/Encrypted/" + FileUpload1.FileName;
       string  path1 = "Files/" + FileUpload1.FileName;
    }
    public string validate(string path1)
    {

        string file1 = Server.MapPath(path1);
        conn = new SqlConnection(c.constr);
        
        conn.Open();
        string q = "select FILENAME ,FILEPATH from FILE ";
        cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = q;
        rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            string file2 = path1;
            string file4 = path1;
           string  file3 = Server.MapPath("~/Files/Dropbox/Encrypted/" + FileUpload1.FileName);


            HashAlgorithm hashAlgo = HashAlgorithm.Create();

            FileStream stream1 = new FileStream(file1, FileMode.Open);
            FileStream stream2 = new FileStream(file4, FileMode.Open);

            byte[] hash1;
            byte[] hash2;

            hash1 = hashAlgo.ComputeHash(stream1);
            hash2 = hashAlgo.ComputeHash(stream2);
            stream1.Close();
            stream2.Close();
            string text = System.IO.File.ReadAllText(file1);
            string text2 = System.IO.File.ReadAllText(file4);
            if (Convert.ToBase64String(hash1) == Convert.ToBase64String(hash2))
            {
                status1 = "dup";

            }

            int aa = Compute(text, text2);
            if (aa == 0)
            {
                status1 = "dup";
              
                break;
            }
        }


        rs.Close();
        conn.Close();
        if (status1 == "dup")
        {
            return "dup";
        }
        else
        {
            return "new";
        }


    }
    public static int Compute(string s, string t)
    {
        if (string.IsNullOrEmpty(s))
        {
            if (string.IsNullOrEmpty(t))
                return 0;
            return t.Length;
        }

        if (string.IsNullOrEmpty(t))
        {
            return s.Length;
        }

        int n = s.Length;
        int m = t.Length;
        int[,] d = new int[n + 1, m + 1];

        // initialize the top and right of the table to 0, 1, 2, ...
        for (int i = 0; i <= n; d[i, 0] = i++) ;
        for (int j = 1; j <= m; d[0, j] = j++) ;

        for (int i = 1; i <= n; i++)
        {
            for (int j = 1; j <= m; j++)
            {
                int cost = (t[j - 1] == s[i - 1]) ? 0 : 1;
                int min1 = d[i - 1, j] + 1;
                int min2 = d[i, j - 1] + 1;
                int min3 = d[i - 1, j - 1] + cost;
                d[i, j] = Math.Min(Math.Min(min1, min2), min3);
            }
        }
        return d[n, m];
    }
    private void encrypt(string inputFilePath, string outputfilePath, string strhash)
    {
        strhash = TextBox6.Text;
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
        crystream = new CryptoStream(outstream, tdc.CreateEncryptor(), CryptoStreamMode.Write);
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
}