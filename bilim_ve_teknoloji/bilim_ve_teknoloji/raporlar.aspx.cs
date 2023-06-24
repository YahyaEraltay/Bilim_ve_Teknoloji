using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using Microsoft.Reporting.WebForms;
using System.Data;

namespace bilim_ve_teknoloji
{
    public partial class Raporlama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack) 
            {
                string sql_string = " SELECT * FROM TBL_MESAJ";

                SqlConnection sqlConnection = new SqlConnection(WebConfigurationManager.ConnectionStrings["PROJE_DBConnectionString"].ToString());
                
                SqlCommand sqlCommand = new SqlCommand(sql_string, sqlConnection);
                SqlDataAdapter my_sql_adapter = new SqlDataAdapter(sqlCommand);

                DataSet ds = new DataSet();

                my_sql_adapter.Fill(ds, "DataSet2");

                ReportViewer1.Reset();
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Raporlar/Report1.rdlc");
                ReportDataSource rds = new ReportDataSource("DataSet2", ds.Tables[0]);
                ReportViewer1.LocalReport.DataSources.Clear();
                
                ReportViewer1.LocalReport.DataSources.Add(rds);
                ReportViewer1.LocalReport.Refresh();


            }
        }
    }
}