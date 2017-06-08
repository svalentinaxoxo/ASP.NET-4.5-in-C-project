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
    public partial class dbCategorySelect : System.Web.UI.Page
    {
        public string CS = WebConfigurationManager.ConnectionStrings
                 ["MyCS"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                FillCategoryList();
            }
        }

        //Change category in the dropdown list
        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectSQL;
            selectSQL = "SELECT * FROM Categories WHERE catid='"
                + ddlCategory.SelectedItem.Value + "'";
            SqlConnection con = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader reader;
            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                reader.Read();
                // Fill the controls
                txtCatID.Text = reader["catid"].ToString();
                txtCatTitle.Text = reader["cattitle"].ToString();
                txtCatDescription.Text = reader["catdescription"].ToString();
                reader.Close();
                lblResults.Text = "The categories are now displayed!";
            }
            catch (Exception err)
            {
                lblResults.Text = "Error getting category information: ";
                lblResults.Text += err.Message;
            }
            finally
            {
                con.Close();
            }
        }

        //Fill Category List for the Dropdown List 

        private void FillCategoryList()
        {
            ddlCategory.Items.Clear();
            string selectSQL = "SELECT * FROM Categories";
            SqlConnection con = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
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
