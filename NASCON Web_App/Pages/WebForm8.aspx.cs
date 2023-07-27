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
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);

            //string name = Request.QueryString["name"];
            //string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select * from Participant where par_name=@name";
            SqlCommand com = new SqlCommand(query, conn);
            com.Parameters.Add(new SqlParameter("@name", name));
            //com.Parameters.Add(new SqlParameter("@id", id));

            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);

            SqlConnection con = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");

            con.Open();

            string checkQuery;
            SqlCommand cmdLogin = new SqlCommand();

            checkQuery = "select * from Participant p";
            cmdLogin = new SqlCommand(checkQuery, con);
            SqlDataReader reader = cmdLogin.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            cmdLogin.Dispose();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            string name = DropDownList1.SelectedItem.Value;
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);

            //string name = Request.QueryString["name"];
            //string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select categoryName, eventId, eventName, eventDate, eventVenue, eventTime, eventPrice from Category, Events, CategoryIncludes c where eventId = c.eventKey and categoryName=@name";
            SqlCommand com = new SqlCommand(query, conn);
            com.Parameters.Add(new SqlParameter("@name", name));
            //com.Parameters.Add(new SqlParameter("@id", id));

            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            conn.Close();






        }

        protected void Button2_Click(object sender, EventArgs e)
        { 

            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);

            SqlConnection con = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");

            con.Open();

            //string checkQuery;
            SqlCommand cmdLogin = new SqlCommand();

            string query = "select sum(amount) as TotalAmount, categoryName from SponsoredBy s, Category c where s.categoryKey=c.categoryId group by categoryName";
            cmdLogin = new SqlCommand(query, con);
            SqlDataReader reader = cmdLogin.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            cmdLogin.Dispose();
            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string name = DropDownList2.SelectedItem.Value;
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);

            //string name = Request.QueryString["name"];
            //string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select mentorname from FacultyMentor f, CategorySuperviseByFaculty cf where f.mentorId = cf.mentorKey and cf.categoryKey = (select categoryId from Category where Categoryname = @name)";
            SqlCommand com = new SqlCommand(query, conn);
            com.Parameters.Add(new SqlParameter("@name", name));
            //com.Parameters.Add(new SqlParameter("@id", id));

            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            conn.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //string name = DropDownList2.SelectedItem.Value;
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);

            //string name = Request.QueryString["name"];
            //string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select * from studentexecutive";
            SqlCommand com = new SqlCommand(query, conn);
            //com.Parameters.Add(new SqlParameter("@name", name));
            //com.Parameters.Add(new SqlParameter("@id", id));

            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            conn.Close();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            //string name = DropDownList2.SelectedItem.Value;
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);

            //string name = Request.QueryString["name"];
            //string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select par_name from Participant p , regforfood r where p.par_cnic=r.participantkey";
            SqlCommand com = new SqlCommand(query, conn);
            //com.Parameters.Add(new SqlParameter("@name", name));
            //com.Parameters.Add(new SqlParameter("@id", id));

            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            conn.Close();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            string date = DropDownList3.SelectedItem.Value;
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);

            //string name = Request.QueryString["name"];
            //string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select eventname from events where eventDate=@date";
            SqlCommand com = new SqlCommand(query, conn);
            com.Parameters.Add(new SqlParameter("@date", date));
            //com.Parameters.Add(new SqlParameter("@id", id));

            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            conn.Close();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {

            string e_name = DropDownList4.SelectedItem.Value;
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);

            //string name = Request.QueryString["name"];
            //string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select count(participantKey) as TotalParticipants from EventParticipatedBy where eventKey=(select eventid from events where eventName=@e_name);";
            SqlCommand com = new SqlCommand(query, conn);
            com.Parameters.Add(new SqlParameter("@e_name", e_name));
            //com.Parameters.Add(new SqlParameter("@id", id));

            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            conn.Close();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            string e_name = DropDownList5.SelectedItem.Value;
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View2);

            //string name = Request.QueryString["name"];
            //string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select mentorName as FacultyMentor, eventId, eventName,eventDate,eventVenue,eventTime,eventPrice from FacultyMentor f, EventSuperviseByFaculty ef, events e where f.mentorId = ef.mentorKey and e.eventId = ef.eventKey and ef.eventKey = (select eventId from events where eventName = @e_name)";
            SqlCommand com = new SqlCommand(query, conn);
            com.Parameters.Add(new SqlParameter("@e_name", e_name));
            //com.Parameters.Add(new SqlParameter("@id", id));


            string query2 = "select studentName as EventHead, eventId, eventName,eventDate,eventVenue,eventTime,eventPrice from StudentExecutive s, EventSuperviseByStudent es, events e where s.studentId = es.studentKey and e.eventId = es.eventKey and es.eventKey = (select eventId from events where eventname = @e_name) and position = 'Event Head'";
            SqlCommand com2 = new SqlCommand(query2, conn);
            com2.Parameters.Add(new SqlParameter("@e_name", e_name));

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

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}