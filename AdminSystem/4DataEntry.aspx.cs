using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _1_DataEntry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Name = txtSearch.Text;
        string Filter = "";

        if (Name != "") { Filter = Filter + "CstmrFullName like '%" + Name + "%' and "; }

        if (Filter.Length > 0)
        {
            string FinalFilter = Filter.Remove(Filter.Length - 4, 3);
            SqlDataSource1.FilterExpression = FinalFilter;
        }
        else
        {
            GridView1.DataBind();
        }
     
    }
}