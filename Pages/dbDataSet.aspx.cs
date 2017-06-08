using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Web.Configuration;

using System.Data;

namespace Project.Pages
{
    public partial class dbDataSet : System.Web.UI.Page
    {
        public string CS = WebConfigurationManager.ConnectionStrings
                 ["MyCS"].ConnectionString;
        DataSet MyDS = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
            BindGCV();
        }

        //Bind the GridView
        private void BindGCV()
        {
            String MySQL = "SELECT * FROM Books";
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter MyDA = new SqlDataAdapter(MySQL, con);

            try {

                MyDA.Fill(MyDS, "Books");
                MyGV.DataSource = MyDS;
                MyGV.DataBind();
            }
            catch (Exception err)
            {
                lblResults.Text = "Error inserting record: ";
                lblResults.Text += err.Message;
            }
            finally {
                con.Close();
            }
        }

        protected void myGridView_PageIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            DataTable myDataTable = MyDS.Tables[0];
            //MyGV.PageIndex = e.NewPageIndex;
            MyGV.DataBind();
        }
    }
}
