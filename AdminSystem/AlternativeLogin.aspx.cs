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

public partial class AlternativeLogin : System.Web.UI.Page
{
    string randomCode;
    public static string to;

    protected void Page_Load(object sender, EventArgs e)
    { }

    
    protected void btnGenerate_Click(object sender, EventArgs e)
    {
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
                }
            }

            if (txtEmail.Text == "".ToString())
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Please enter your email');</script>");
            }
            txtVer.Text = randomCode;

            string from, pass, messageBody;
            Random rand = new Random();
            randomCode = (rand.Next(999999)).ToString();
            MailMessage message = new MailMessage();
            to = (txtEmail.Text).ToString();
            from = "rapidoteampass@gmail.com";
            pass = "Rapido_1";
            messageBody = "Your OTP is:" + randomCode;
            message.To.Add(to);
            message.From = new MailAddress(from);
            message.Body = messageBody;
            message.Subject = "OTP Request";
            SmtpClient SMTP = new SmtpClient("smtp-mail.outlook.com", 587);
            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.EnableSsl = true;
            smtp.Port = 587;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(from, pass);
            txtVer.Text = randomCode;

            try
            {
                smtp.Send(message);
                MessageBox.Show("Code Sent");

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }


            string a = Convert.ToString(txtCode.Text);
            string b = Convert.ToString(txtVer.Text);

        }
    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        string a = Convert.ToString(txtCode.Text);
        string b = Convert.ToString(txtVer.Text);

        if (a == b)
        {

            Response.Redirect("StockDataEntry.aspx");

        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Incorrect Code');</script>");
        }
    }



    protected void txtVer_TextChanged(object sender, EventArgs e)
    {

    }
}


   