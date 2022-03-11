using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _1_ConfirmDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)



    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["LoginDetailsConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count (*) from tblLogin where userName ='" + txtUserName.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select password from tblLogin where userName ='" + txtUserName.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString();
            if (password == txtPassword.Text)
            {
                Session["New"] = txtUserName.Text;
                Response.Redirect("StockList.aspx");
            }
            else
            {


            }
        }
        else
        {

        }
    }

    }
