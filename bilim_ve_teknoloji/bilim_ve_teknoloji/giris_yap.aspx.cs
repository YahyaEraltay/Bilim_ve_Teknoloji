using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace bilim_ve_teknoloji
{
    public partial class giris_yap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Server=.; User Id=sa; Password=yahyabey308; Initial Catalog=PROJE_DB; Integrated Security=True;");
            SqlDataAdapter sda = new SqlDataAdapter(" Select * from TBL_KAYIT where email='" + TextBox1.Text + "' and sifre='" + TextBox2.Text + "'" ,baglanti);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count == 1)
            {
                Label1.Text = "Giriş Başarılı";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            else 
            {
                Label1.Text = "Giriş Başarısız!";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}