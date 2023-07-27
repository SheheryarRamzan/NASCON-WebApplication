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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View3);

            string name = Request.QueryString["name"];
            string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select studentId,studentName,batch, position from StudentExecutive s, EventSuperviseByStudent es, CategoryIncludes c, events e where s.studentId = es.studentKey and c.eventKey = e.eventId and c.categoryKey = (select categoryKey from CategorySuperviseByFaculty where mentorKey = @id)";
            SqlCommand com = new SqlCommand(query, conn);
            com.Parameters.Add(new SqlParameter("@id", id));

            string query2 = "select studentId,studentName,batch, position from StudentExecutive s, CategorySuperviseByStudent cs, CategoryIncludes c, events e where s.studentId = cs.studentKey and c.eventKey = e.eventId and c.categoryKey = (select categoryKey from CategorySuperviseByFaculty where mentorKey = @id); ";
            SqlCommand com2 = new SqlCommand(query2, conn);
            com2.Parameters.Add(new SqlParameter("@id", id));


            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            GridView3.DataSource = reader;
            GridView3.DataBind();
            conn.Close();


            conn.Open();
            SqlDataReader reader2 = com2.ExecuteReader();
            GridView4.DataSource = reader2;
            GridView4.DataBind();
            conn.Close();


        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View2);

            string name = Request.QueryString["name"];
            string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select par_name, par_email, par_cnic, par_contact from Participant p, EventParticipatedBy ep, CategoryIncludes c, events e where p.par_cnic = ep.participantKey and ep.eventKey = c.eventKey and c.eventKey = e.eventId and c.categoryKey = (select categoryKey from CategorySuperviseByFaculty where mentorKey = @id)";
            SqlCommand com = new SqlCommand(query, conn);
            com.Parameters.Add(new SqlParameter("@id", id));

            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            conn.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View2);

            string name = Request.QueryString["name"];
            string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select categoryName, eventId, eventName,eventDate,eventVenue,eventTime,eventPrice from Category, Events, CategoryIncludes c where eventId = c.eventKey and c.categoryKey = (select categoryKey from CategorySuperviseByFaculty where mentorKey = @id)";
            SqlCommand com = new SqlCommand(query, conn);
            com.Parameters.Add(new SqlParameter("@id", id));

            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pname = TextBox1.Text;

            MultiView1.Visible = true;
            MultiView1.SetActiveView(View2);

            //string name = Request.QueryString["name"];
            string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select par_name, par_email, par_cnic, par_contact from Participant p, EventParticipatedBy ep, CategoryIncludes c, events e where p.par_cnic = ep.participantKey and ep.eventKey = c.eventKey and c.eventKey = e.eventId and c.categoryKey = (select categoryKey from CategorySuperviseByFaculty where mentorKey = @id) and par_name = @pname";
            SqlCommand com = new SqlCommand(query, conn);
            com.Parameters.Add(new SqlParameter("@pname", pname));
            com.Parameters.Add(new SqlParameter("@id", id));

            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            conn.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string date = DropDownList1.SelectedItem.Value;
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View2);

            //string name = Request.QueryString["name"];
            string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select eventName from events e, CategoryIncludes c where c.eventKey=e.eventId and c.categoryKey = (select categoryKey from CategorySuperviseByFaculty where mentorKey = 5) and e.eventDate = @date";
            SqlCommand com = new SqlCommand(query, conn);
            com.Parameters.Add(new SqlParameter("@date", date));
            com.Parameters.Add(new SqlParameter("@id", id));

            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            conn.Close();

        }

        protected void Button6_Click(object sender, EventArgs e)
        {

            string e_name = DropDownList2.SelectedItem.Value;
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View2);

            //string name = Request.QueryString["name"];
            string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select count(participantKey) as TotalParticipants from EventParticipatedBy where eventKey=(select eventid from events where eventName=@e_name);";
            SqlCommand com = new SqlCommand(query, conn);
            com.Parameters.Add(new SqlParameter("@e_name", e_name));
            com.Parameters.Add(new SqlParameter("@id", id));

            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            conn.Close();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            string e_name = DropDownList3.SelectedItem.Value;
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View3);

            //string name = Request.QueryString["name"];
            string id = Request.QueryString["id"];

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
            GridView3.DataSource = reader;
            GridView3.DataBind();
            conn.Close();

             conn.Open();
            SqlDataReader reader2 = com2.ExecuteReader();
            GridView4.DataSource = reader2;
            GridView4.DataBind();
            conn.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            MultiView1.Visible = true;
            MultiView1.SetActiveView(View2);

            //string name = Request.QueryString["name"];
            string id = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            string query = "select par_name from Participant p, regforfood r, EventParticipatedBy e, CategorySuperviseByFaculty cf where p.par_cnic = r.participantkey and e.participantKey = p.par_cnic and e.participantKey = r.participantkey and cf.mentorKey = @id";
            SqlCommand com = new SqlCommand(query, conn);
            com.Parameters.Add(new SqlParameter("@id", id));

            conn.Open();
            SqlDataReader reader = com.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            conn.Close();
        }
    }
}