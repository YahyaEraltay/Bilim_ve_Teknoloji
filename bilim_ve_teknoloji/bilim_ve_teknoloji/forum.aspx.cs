using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bilim_ve_teknoloji
{
    public partial class forum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Today.ToShortDateString() + " " + DateTime.Now.ToShortTimeString();
            ObjectDataSource1.Insert();
            
            GridView1.DataBind();
            TextBox1.Text = " ";
            TextBox2.Text = "";
    
        }
    }
}