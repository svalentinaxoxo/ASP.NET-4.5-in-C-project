using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Web.Configuration;

namespace Project.Pages
{
    public partial class dbStoredProcedure : System.Web.UI.Page
    {
        private string CS = WebConfigurationManager.ConnectionStrings
                 ["MyCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                FillCategoryList();
            }
            else
            {
                lblResults.Text = "You picked: " +
                    ddlCategory.SelectedItem.Value.ToString();
            }
        }

        //Fill category list for the dropdown list 
        private void FillCategoryList()
        {
            ddlCategory.Items.Clear();
            SqlConnection con = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "sp_getcat";

            SqlDataReader reader;
            ListItem firstItem = new ListItem();
            firstItem.Text = "Please select a category";
            firstItem.Value = "0";
            ddlCategory.Items.Add(firstItem);
            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    ListItem newItem = new ListItem();
                    newItem.Text = reader["cattitle"].ToString();
                    newItem.Value = reader["catid"].ToString();
                    ddlCategory.Items.Add(newItem);
                }
                reader.Close();
                lblResults.Text = "The category list has been populated in the dropdown list.";
            }
            catch (Exception err)
            {
                lblResults.Text = "Error Reading list of categories";
                lblResults.Text += err.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}