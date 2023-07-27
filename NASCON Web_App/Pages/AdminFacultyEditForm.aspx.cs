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
    
    public partial class AdminFacultyEditForm : System.Web.UI.Page
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
 
            checkQuery = "select * from FacultyMentor";
            cmdLogin = new SqlCommand(checkQuery, con);
            SqlDataReader reader = cmdLogin.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            cmdLogin.Dispose();
            con.Close();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

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

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void MultiView1_ActiveViewChanged1(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try { 
            SqlConnection con = new SqlConnection(@connectionString);
            con.Open();
            string id = TextBox1.Text,
                mentorname = TextBox2.Text,
                category = DropDownList2.Text,
                events = DropDownList3.Text;

            string query = "insert into FacultyMentor values('" + id + "','" + mentorname + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            if (category != "Null" && events == "Null")
            {
                string categoryId = "select categoryId from Category where categoryName = '" + category + "'";
                cmd = new SqlCommand(categoryId, con);
                categoryId = cmd.ExecuteScalar().ToString();

                query = "insert into CategorySuperviseByFaculty values('" + categoryId + "','" + id + "')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
            }
            else if (category == "Null" && events != "Null")
            {
                string eventId = "select eventId from events where eventName = '" + events + "'";
                cmd = new SqlCommand(eventId, con);
                eventId = cmd.ExecuteScalar().ToString();

                query = "insert into EventSuperviseByFaculty values('" + eventId + "','" + id + "')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
            }
            else if (category != "Null" && events != "Null")
            {
                string categoryId = "select categoryId from Category where categoryName = '" + category + "'";
                cmd = new SqlCommand(categoryId, con);
                categoryId = cmd.ExecuteScalar().ToString();

                query = "insert into CategorySuperviseByFaculty values('" + categoryId + "','" + id + "')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                string eventId = "select eventId from events where eventName = '" + events + "'";
                cmd = new SqlCommand(eventId, con);
                eventId = cmd.ExecuteScalar().ToString();

                query = "insert into EventSuperviseByFaculty values('" + eventId + "','" + id + "')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

            }
            cmd.Dispose();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View2);

           }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View3);

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View4);
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
         
       
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(@connectionString);
            //con.Open();
            //string categoryName = DropDownList2.Text;
            //string query = "select eventName from events where eventId in(select eventKey from CategoryIncludes i, Category cwhere i.categoryKey = c.categoryId and c.categoryName = '" + categoryName + "'; ";
            //SqlDataAdapter da = new SqlDataAdapter(query, con);
            //DataSet ds = new DataSet();
            //da.Fill(ds);

            //DropDownList3.DataSource = ds;
        }

        protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@connectionString);
                SqlCommand cmd = new SqlCommand();
                con.Open();

                string id = TextBox3.Text,
                    category = DropDownList6.Text,
                    events = DropDownList3.Text;

                if (category != "Null")
                {
                    string categoryId = "select categoryId from Category where categoryName = '" + category + "'";
                    cmd = new SqlCommand(categoryId, con);
                    categoryId = cmd.ExecuteScalar().ToString();
                    string query2 = "update CategorySuperviseByFaculty set categoryKey = '" + categoryId + "' where mentorKey = '" + id + "'";
                    cmd = new SqlCommand(query2, con);
                    cmd.ExecuteNonQuery();
                }
                if (events != "Null")
                {
                    string eventId = "select eventId from events where eventName = '" + events + "'";
                    cmd = new SqlCommand(eventId, con);
                    eventId = cmd.ExecuteScalar().ToString();
                    string query1 = "update EventSuperviseByFaculty set eventKey = '" + eventId + "' where mentorKey = '" + id + "'";
                    cmd = new SqlCommand(query1, con);
                    cmd.ExecuteNonQuery();
                }
                cmd.Dispose();
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

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@connectionString);
            SqlCommand cmd = new SqlCommand();
            con.Open();

            string id = TextBox5.Text;

            if (CheckBox1.Checked)
            {
                string query = "delete from CategorySuperviseByFaculty where mentorKey = '" + id + "'";
                cmd = new SqlCommand(query,con);
                cmd.ExecuteNonQuery();
            }
            if (CheckBox2.Checked)
            {
                string query = "delete from EventSuperviseByFaculty where mentorKey = '" + id + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
            }
            if(!CheckBox1.Checked && !CheckBox2.Checked)
            {
                string query = "delete from CategorySuperviseByFaculty where mentorKey = '" + id + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                 query = "delete from EventSuperviseByFaculty where mentorKey = '" + id + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

                 query = "delete from FacultyMentor where mentorId = '" + id + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

            }
            cmd.Dispose();
            con.Close();
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm8.aspx");
        }
    }
}