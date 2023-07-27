using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; 
using System.Data;
using System.Windows.Forms;
namespace WebApplication2
{
    public partial class AdminEventEditForm : System.Web.UI.Page
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

            checkQuery = "select * from Events";
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

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminSponsorsEditForm.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminEventEditForm.aspx");
        }

        protected void MultiView1_ActiveViewChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);

            SqlConnection con = new SqlConnection(@connectionString);
            SqlCommand cmd;
            con.Open();
            string eventId = TextBox1.Text,
                eventName = TextBox2.Text,
                venue = TextBox4.Text,
                date = DropDownList1.Text + '-' + DropDownList2.Text + '-' + DropDownList3.Text,
                time = DropDownList4.Text + ':' + DropDownList5.Text,
                headStudent = DropDownList6.Text,
                headMentor = DropDownList7.Text,
                price = TextBox5.Text;
            try
            {

                string query = "insert into events values('" + eventId + "','" + eventName + "','" + date + "','" + venue + "','" + time + "','" + Convert.ToInt32(price) + "')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                con.Close();

            }
            catch(FormatException )
            {
                MessageBox.Show("Completely Fill the Form");
            
            }
            catch(SqlException )
            {
                MessageBox.Show("Duplication of Id is not allowed");
            }
           
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);

            try
            {
                SqlConnection con = new SqlConnection(@connectionString);
                SqlCommand cmd;
                con.Open();
                string eventId = TextBox3.Text;
                string query = "";

                query = "delete from CategoryIncludes where eventKey = '" + eventId + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                query = "delete from EventSuperviseByStudent where eventKey = '" + eventId + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                query = "delete from EventParticipatedBy where eventKey = '" + eventId + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                query = "delete from EventSuperviseByFaculty where eventKey = '" + eventId + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                query = "delete from events where eventId = '" + eventId + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                cmd.Dispose();
                con.Close();
            }
            catch
            {
                MessageBox.Show("Error Occured");
            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Mentors_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);
        }
    }
}