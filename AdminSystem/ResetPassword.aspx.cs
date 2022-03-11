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
using System.Configuration;
using System.Data.SqlClient;

public partial class ResetPassword : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["LoginDetailsConnectionString"].ConnectionString;
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
      //  using (SqlConnection con = new SqlConnection((CS))
       // { }

        
                
            }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtNewPass.Text != "" && txtConfirmPass.Text != "" && txtNewPass.Text == txtConfirmPass.Text)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("update tblLogin set password='" + txtNewPass.Text + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<Script>alert('Password Successfully Chanaged'); </script>");
            }

        }
    }
}







