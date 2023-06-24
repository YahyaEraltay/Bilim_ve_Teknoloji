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
    public partial class kayit_ol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection("Server=.; User Id=sa; Password=yahyabey308; Initial Catalog=PROJE_DB; Integrated Security=True;");
            baglanti.Open();
            SqlCommand cmd = new SqlCommand("insert into TBL_KAYIT" + " (isim, soy_isim, email, sifre, cinsiyet) values (@isim, @soy_isim, @email, @sifre, @cinsiyet)", baglanti);
            cmd.Parameters.AddWithValue("@isim", TextBox1.Text);
            cmd.Parameters.AddWithValue("@soy_isim", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@sifre", TextBox4.Text);
            cmd.Parameters.AddWithValue("@cinsiyet", DropDownList1.SelectedItem.Value);
            cmd.ExecuteNonQuery();
            baglanti.Close();
            Label1.Text = "Kayıt Oluşturuldu!";      
            
        }
    }
}