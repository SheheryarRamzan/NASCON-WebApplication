using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace DataBase_SemesterProject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button4_Click(object sender, EventArgs e)
        {
          
        }

 

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            // MultiView1.SetActiveView(View2);
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);

            string name = Request.QueryString["name"];
            string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select par_name as ParticipantName ,eventName as EventName from Participant,Events,EventParticipatedBy e, EventSuperviseByFaculty f where par_cnic = e.participantKey and eventId = f.eventKey and f.mentorKey = @id";
            SqlCommand com = new SqlCommand(query, conn);
            com.Parameters.Add(new SqlParameter("@id", id));

            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            conn.Close();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            conn.Open();

            try
            {
                string query = "insert into StudentExecutive values (@studentId, @studentName, @batch, @position)";
                SqlCommand com = new SqlCommand(query, conn);
                //string query2 = "insert into StudentExecutive values (@studentId, @studentName, @batch, @position)";
                //SqlCommand com2 = new SqlCommand(query2, conn);

                com.Parameters.AddWithValue("@studentId", TextBox3.Text);
                com.Parameters.AddWithValue("@studentName", TextBox4.Text);
                com.Parameters.AddWithValue("@batch", Convert.ToInt32(TextBox6.Text));
                com.Parameters.AddWithValue("@position", DropDownList2.SelectedItem.Value);

                if (DropDownList2.SelectedItem.Value == "President")
                {
                    DropDownList2.Items.Remove(DropDownList2.Items.FindByValue("President"));
                }
                else if (DropDownList2.SelectedItem.Value == "Vice President")
                {
                    DropDownList2.Items.Remove(DropDownList2.Items.FindByValue("Vice President"));
                }
                else if (DropDownList2.SelectedItem.Value == "Secretary")
                {
                    DropDownList2.Items.Remove(DropDownList2.Items.FindByValue("Secretary"));
                }
                else if (DropDownList2.SelectedItem.Value == "Event Head")
                {
                    DropDownList2.Items.Remove(DropDownList2.Items.FindByValue("Event Head"));
                }
                else if (DropDownList2.SelectedItem.Value == "Operations Head")
                {
                    DropDownList2.Items.Remove(DropDownList2.Items.FindByValue("Operations Head"));
                }
                else if (DropDownList2.SelectedItem.Value == "Logistics Head")
                {
                    DropDownList2.Items.Remove(DropDownList2.Items.FindByValue("Logistics Head"));
                }
                else if (DropDownList2.SelectedItem.Value == "Head Sponsorship")
                {
                    DropDownList2.Items.Remove(DropDownList2.Items.FindByValue("Head Sponsorship"));
                }
                //DropDownList2.Items.Remove(DropDownList2.Items.FindByValue("President"));
                com.ExecuteNonQuery();

                string event_name = DropDownList1.Text;
                string eventId;
                eventId = "select eventId from events where eventName = '" + event_name + "'";
                SqlCommand cmd = new SqlCommand(eventId, conn);
                eventId = cmd.ExecuteScalar().ToString();

                string query2 = "insert into EventSuperviseByStudent values('" + eventId + "','" + TextBox3.Text + "')";
                SqlCommand cmd2 = new SqlCommand(query2, conn);
                cmd2.ExecuteNonQuery();

                MessageBox.Show("Inserted Successfully");

            }
            catch (FormatException)
            {
                MessageBox.Show("Completely Fill the Form");

            }
            catch (SqlException)
            {
                MessageBox.Show("Duplication of Id is not allowed");
            }


            conn.Close();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            conn.Open();

            try
            {
                string query = "update StudentExecutive set studentId=@studentId, studentName=@studentName, batch=@batch, position=@position where studentId=@studentId";
                SqlCommand com = new SqlCommand(query, conn);
               
                com.Parameters.AddWithValue("@studentId", TextBox3.Text);
                com.Parameters.AddWithValue("@studentName", TextBox4.Text);
                com.Parameters.AddWithValue("@batch", Convert.ToInt32(TextBox6.Text));
                com.Parameters.AddWithValue("@position", DropDownList2.SelectedItem.Value);

                if (DropDownList2.SelectedItem.Value == "President")
                {
                    DropDownList2.Items.Remove(DropDownList2.Items.FindByValue("President"));
                }
                else if (DropDownList2.SelectedItem.Value == "Vice President")
                {
                    DropDownList2.Items.Remove(DropDownList2.Items.FindByValue("Vice President"));
                }
                else if (DropDownList2.SelectedItem.Value == "Secretary")
                {
                    DropDownList2.Items.Remove(DropDownList2.Items.FindByValue("Secretary"));
                }
                else if (DropDownList2.SelectedItem.Value == "Event Head")
                {
                    DropDownList2.Items.Remove(DropDownList2.Items.FindByValue("Event Head"));
                }
                else if (DropDownList2.SelectedItem.Value == "Operations Head")
                {
                    DropDownList2.Items.Remove(DropDownList2.Items.FindByValue("Operations Head"));
                }
                else if (DropDownList2.SelectedItem.Value == "Logistics Head")
                {
                    DropDownList2.Items.Remove(DropDownList2.Items.FindByValue("Logistics Head"));
                }
                else if (DropDownList2.SelectedItem.Value == "Head Sponsorship")
                {
                    DropDownList2.Items.Remove(DropDownList2.Items.FindByValue("Head Sponsorship"));
                }

                com.ExecuteNonQuery();

                string event_name = DropDownList1.Text;
                string eventId;
                eventId = "select eventId from events where eventName = '" + event_name + "'";
                SqlCommand cmd = new SqlCommand(eventId, conn);
                //cmd.Parameters.AddWithValue("@studentId", TextBox3.Text);
                eventId = cmd.ExecuteScalar().ToString();

                string query2 = "update EventSuperviseByStudent set eventKey = '" + eventId + "' where studentKey= '" + TextBox3.Text + "'";
                SqlCommand cmd2 = new SqlCommand(query2, conn);
                cmd2.ExecuteNonQuery();
                MessageBox.Show("Updated Successfully");

            }
            catch (FormatException)
            {
                MessageBox.Show("Completely Fill the Form");

            }
            catch (SqlException)
            {
                MessageBox.Show("Duplication of Id is not allowed");
            }


            conn.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View3);
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View4);
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            conn.Open();

            try
            {
                string query = "delete StudentExecutive where @studentId=studentId";
                string query2 = "delete EventSuperviseByStudent where @studentId=studentKey";
                string query3 = "delete CategorySuperviseByStudent where @studentId=studentKey";

                SqlCommand com2 = new SqlCommand(query2, conn);
                SqlCommand com3 = new SqlCommand(query3, conn);
                SqlCommand com = new SqlCommand(query, conn);

                com.Parameters.AddWithValue("@studentId", TextBox8.Text);
                com2.Parameters.AddWithValue("@studentId", TextBox8.Text);
                com3.Parameters.AddWithValue("@studentId", TextBox8.Text);

                //com.Parameters.AddWithValue("@studentName", TextBox4.Text);
                //com.Parameters.AddWithValue("@batch", TextBox5.Text);
                //com.Parameters.AddWithValue("@position", TextBox6.Text);
                //MessageBox.Show("Updated Successfully!"); 
                Response.Write("Deleted Successfully!");
                com2.ExecuteNonQuery();
                com3.ExecuteNonQuery();
                com.ExecuteNonQuery();
                MessageBox.Show("Deleted Successfully!");
            }
            catch (FormatException)
            {
                MessageBox.Show("Completely Fill the Form");

            }
            catch (SqlException)
            {
                MessageBox.Show("Duplication of Id is not allowed");
            }

            conn.Close();
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            string name = Request.QueryString["name"];
            string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            conn.Open();

            try
            {
                string query = "update Events set eventVenue=@eventVenue, eventTime=@eventTime where eventId=(select eventKey from EventSuperviseByFaculty where mentorKey=@id)";
                SqlCommand com = new SqlCommand(query, conn);
                com.Parameters.Add(new SqlParameter("@id", id));
                com.Parameters.AddWithValue("@eventVenue", TextBox2.Text);
                com.Parameters.AddWithValue("@eventTime", TextBox1.Text);
                com.ExecuteNonQuery();
                MessageBox.Show("Edited Successfully");
            }

            catch (FormatException)
            {
                MessageBox.Show("Completely Fill the Form");

            }
            catch (SqlException)
            {
                MessageBox.Show("Duplication of Id is not allowed");
            }

            //MessageBox.Show("Updated Successfully!");
            //Response.Write("Updated Successfully!");

            conn.Close();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View5);

            string name = Request.QueryString["name"];
            string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select studentId, studentName, batch, position from StudentExecutive, EventSuperviseByStudent c, CategoryIncludes ci where c.studentKey = studentId and ci.eventKey = c.eventKey and ci.categoryKey = (select cf.categoryKey from CategorySuperviseByFaculty cf  where cf.mentorKey = @id)";
            SqlCommand com = new SqlCommand(query, conn);
            com.Parameters.Add(new SqlParameter("@id", id));

            string query2 = "select studentId, studentName, batch, position from StudentExecutive, EventSuperviseByStudent c, CategorySuperviseByStudent cf where c.studentKey = studentId and cf.studentKey = studentId and cf.categoryKey = (select cf.categoryKey from CategorySuperviseByFaculty cf  where cf.mentorKey = @id)";
            SqlCommand com2 = new SqlCommand(query2, conn);
            com2.Parameters.Add(new SqlParameter("@id", id));


            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            conn.Close();


            conn.Open();
            SqlDataReader reader2 = com2.ExecuteReader();
            GridView3.DataSource = reader2;
            GridView3.DataBind();
            conn.Close();


        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            //Response.Write("Faculty Mentor Supervises Event");

            string name = Request.QueryString["name"];
            string id = Request.QueryString["id"];

            string url = "WebForm7.aspx?name=" + name + "&id=" + id;
            Response.Redirect(url);

            //Response.Redirect("WebForm7.aspx");
        }
    }
}