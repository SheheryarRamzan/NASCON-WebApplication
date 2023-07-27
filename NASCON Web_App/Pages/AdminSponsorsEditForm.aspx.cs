using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace WebApplication2
{
    public partial class AdminSponsorsEditForm : System.Web.UI.Page
    {
        string connectionString = "Data Source=(local)\\SQLEXPRESS;initial Catalog=proj;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);
            SqlConnection con = new SqlConnection(@connectionString);
            con.Open();

            string checkQuery;
            SqlCommand cmdLogin = new SqlCommand();

            checkQuery = "select * from Sponsor";
            cmdLogin = new SqlCommand(checkQuery, con);
            SqlDataReader reader = cmdLogin.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            cmdLogin.Dispose();
            con.Close();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminFacultyEditForm.aspx");
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AdminStudentEditForm.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAdministratorEditForm.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminEventEditForm.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminSponsorsEditForm.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void MultiView1_ActiveViewChanged1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View2);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View3);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.Visible=true;
            MultiView1.SetActiveView(View1);

            try
            {
                SqlConnection con = new SqlConnection(@connectionString);
                con.Open();

                string query;
                SqlCommand cmdLogin = new SqlCommand();
                string sponsorId = TextBox1.Text,
                    companyName = TextBox2.Text,
                    repName = TextBox6.Text,
                    repCnic = TextBox7.Text,
                    sponsoredCategory = DropDownList2.Text;

                query = "insert into Sponsor values('" + sponsorId + "','" + companyName + "','" + repName + "','" + repCnic + "')";
                cmdLogin = new SqlCommand(query, con);
                cmdLogin.ExecuteNonQuery();

                string categoryId = "select categoryId from Category where categoryName = '" + sponsoredCategory + "'";
                cmdLogin = new SqlCommand(categoryId, con);
                categoryId = cmdLogin.ExecuteScalar().ToString();

                query = "insert into SponsoredBy values('" + categoryId + "','" + sponsorId + "')";
                cmdLogin = new SqlCommand(query, con);
                cmdLogin.ExecuteNonQuery();

                cmdLogin.Dispose();
                con.Close();
            }
            catch (FormatException)
            {
                MessageBox.Show("Completely Fill the Form");

            }
            catch (SqlException)
            {
                MessageBox.Show("Duplication of Id is not allowed");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);

            SqlConnection con = new SqlConnection(@connectionString);
            con.Open();

            string query;
            SqlCommand cmdLogin = new SqlCommand();
            string sponsorId = TextBox3.Text;

            query = "delete from SponsoredBy where sponsorKey = '"+sponsorId+"'";
            cmdLogin = new SqlCommand(query, con);
            cmdLogin.ExecuteNonQuery();

            query = "delete from sponsor where sponsorId = '" + sponsorId + "'";
            cmdLogin = new SqlCommand(query, con);
            cmdLogin.ExecuteNonQuery();

            cmdLogin.Dispose();
            con.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);
        }
    }
}