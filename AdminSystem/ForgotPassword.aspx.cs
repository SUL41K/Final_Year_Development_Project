using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Threading.Tasks;
using System.ComponentModel;
using System.Drawing;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Windows.Forms;
using ClassLibrary;
using System.Data.SqlClient;
using System.Configuration;

public partial class ForgotPassword : System.Web.UI.Page
{
    string randomCode;
    public static string to;
    

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["LoginDetailsConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from tblLogin where email ='" + txtEmail.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                // String myGUID = Guid.NewGuid().ToString();
                // int Uid = Convert.ToInt32(dt.Rows[0][0]);
                // SqlCommand cmd1 = new SqlCommand'

               /* try
                { 
                
                    String ToEmailAddress = dt.Rows[0][4].ToString();
                    String Username = dt.Rows[0][1].ToString();
                    String EmailBody = "Hi " + Username + ",<br/><br/> Click the link below to reset <br/><br/> http://localhost:54436/Invoice.aspx";
                    
                    MailMessage PassRecMail = new MailMessage("rapidoteampass@gmail.com", ToEmailAddress);
                    
                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml = true;
                    PassRecMail.Subject = "Reset";
                    PassRecMail.Priority = MailPriority.High;
                    //SmtpClient SMTP = new SmtpClient ("smtp-mail.outlook.com", 587);
                    SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                    SMTP.DeliveryMethod = SmtpDeliveryMethod.Network;
                    SMTP.UseDefaultCredentials = false;
                    SMTP.Credentials = new NetworkCredential(userName, Password);
                    {
                        UserName = "rapidoteampass@gmail.com",
                        Password = "Rapido_1"
                    };
                    SMTP.EnableSsl = true;

                }*/




            }

        }

        TxtVer.Text = randomCode;

        string from, pass, messageBody;
        Random rand = new Random();
        randomCode = (rand.Next(999999)).ToString();
        MailMessage message = new MailMessage();
        to = (txtEmail.Text).ToString();
        from = "rapidoteampass@gmail.com";
        pass = "Rapido_1";
        messageBody = "You code is:"  + randomCode;
        message.To.Add(to);
        message.From = new MailAddress(from);
        message.Body = messageBody;
        message.Subject = "Reset Password";
        SmtpClient SMTP = new SmtpClient("smtp-mail.outlook.com", 587);
        SmtpClient smtp = new SmtpClient("smtp.gmail.com");
        smtp.EnableSsl = true;
        smtp.Port = 587;
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtp.Credentials = new NetworkCredential(from, pass);
         TxtVer.Text = randomCode;
       
        try
        {
            smtp.Send(message);
            MessageBox.Show("Code Sent");
  
        } catch(Exception ex)
        {
            MessageBox.Show(ex.Message);
        }


        string a = Convert.ToString(txtCode.Text);
        string b = Convert.ToString(TxtVer.Text);

    }

    protected void txtVerify_Click(object sender, EventArgs e)
    {
        string a = Convert.ToString(txtCode.Text);
        string b = Convert.ToString(TxtVer.Text);

        if (a == b)
        {
         
            Response.Redirect("StockDataEntry.aspx");
          
        }
        else
        {
            Response.Write("Incorrect Password");
        }

    }

    protected void txtCode_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtEmail_TextChanged(object sender, EventArgs e)
    {

    }
}