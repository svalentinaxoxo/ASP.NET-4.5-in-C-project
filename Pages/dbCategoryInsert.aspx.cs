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
    public partial class dbCategoryInsert : System.Web.UI.Page
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

        //Insert Record
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            //perform user defined checks.
            if (txtCatID.Text == "" || txtCatTitle.Text == "")
            {
                lblResults.Text = "Records require category ID and category name.";
                return;
            }
            string insertSQL;
            insertSQL = "INSERT INTO Categories ("
                + "catid, cattitle, catdescription)"
                + "VALUES (@catid, @cattitle, @catdescription)";

            SqlConnection con = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand(insertSQL, con);

            //Add parameters and values
            cmd.Parameters.AddWithValue("@catid", txtCatID.Text);
            cmd.Parameters.AddWithValue("@cattitle", txtCatTitle.Text);
            cmd.Parameters.AddWithValue("@catdescription", txtCatDescription.Text);

            //try to open database and excute the update
                int returnValue = 0;
            try
            {
                con.Open();
                returnValue = cmd.ExecuteNonQuery();
                lblResults.Text = returnValue.ToString() + " record inserted.";
            }
            catch (Exception err)
            {
                lblResults.Text = "Error inserting record: ";
                lblResults.Text += err.Message;
            }
            finally
            {
                con.Close();
            }

            //if insert succeeded, refresh the author list
            if (returnValue > 0)
            {
                FillCategoryList();
                txtCatID.Text = "";
                txtCatTitle.Text = "";
                txtCatDescription.Text = "";
            }
        }
        //FillCategoryList
        private void FillCategoryList()
        {
            ddlCategory.Items.Clear();

            //define the select statement 
            string selectSQL = "SELECT * FROM Categories";

            //define the objects
            SqlConnection con = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand(selectSQL, con);
            SqlDataReader reader;

            //Add the first item in the DropDownList
            ListItem firstItem = new ListItem();
            firstItem.Text = "Please select a category";
            firstItem.Value = "0";
            ddlCategory.Items.Add(firstItem);

            //Try to open the database and read information
            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                //each DropDownList store the CompanyName and ContactName using the text property 
                int nextnumber = 0;
                while (reader.Read())
                {
                    ListItem newItem = new ListItem();
                    newItem.Text = reader["cattitle"].ToString();
                    newItem.Value = reader["catid"].ToString();
                    ddlCategory.Items.Add(newItem);
                    nextnumber++;
                }
                reader.Close();
                nextnumber++;
                lblResults.Text = "The category list has been populated in the dropdown list. <br />" +
                    "The next number in the list is " + nextnumber.ToString();
            }
            catch (Exception err)
            {
                lblResults.Text = "Error reading list of categories.";
                lblResults.Text += err.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}