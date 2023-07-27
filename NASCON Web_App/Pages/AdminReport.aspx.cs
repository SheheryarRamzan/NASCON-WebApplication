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
    public partial class AdminReport : System.Web.UI.Page
    {

        string connectionString = "Data Source=(local)\\SQLEXPRESS;initial Catalog=proj;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);
        }


        protected void LinkButton1_Click(object sender, EventArgs e)
        {

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
            Response.Redirect("AdminFacultyEditForm.aspx");

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminEventEditForm.aspx");

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminFacultyEditForm.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View2);

            SqlConnection con = new SqlConnection(@connectionString);
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View3);

            SqlConnection con = new SqlConnection(@connectionString);
            con.Open();

            string checkQuery;
            SqlCommand cmdLogin = new SqlCommand();

            checkQuery = "select categoryName = (select categoryName from category where categoryId = categoryKey),sum(amount) as amountGiven from SponsoredBy group by categoryKey";

            cmdLogin = new SqlCommand(checkQuery, con);
            SqlDataReader reader = cmdLogin.ExecuteReader();
            GridView2.DataSource = reader;
            GridView2.DataBind();
            cmdLogin.Dispose();
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View4);

            SqlConnection con = new SqlConnection(@connectionString);
            con.Open();

            string checkQuery;
            SqlCommand cmdLogin = new SqlCommand();

            checkQuery = "select * from events";
            cmdLogin = new SqlCommand(checkQuery, con);
            SqlDataReader reader = cmdLogin.ExecuteReader();
            GridView3.DataSource = reader;
            GridView3.DataBind();
            cmdLogin.Dispose();
            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View5);

            SqlConnection con = new SqlConnection(@connectionString);
            con.Open();

            string checkQuery;
            SqlCommand cmdLogin = new SqlCommand();

            checkQuery = "select * from FacultyMentor";
            cmdLogin = new SqlCommand(checkQuery, con);
            SqlDataReader reader = cmdLogin.ExecuteReader();
            GridView4.DataSource = reader;
            GridView4.DataBind();
            cmdLogin.Dispose();
            con.Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View6);

            SqlConnection con = new SqlConnection(@connectionString);
            con.Open();

            string checkQuery;
            SqlCommand cmdLogin = new SqlCommand();

            checkQuery = "select * from StudentExecutive";

            cmdLogin = new SqlCommand(checkQuery, con);
            SqlDataReader reader = cmdLogin.ExecuteReader();
            GridView5.DataSource = reader;
            GridView5.DataBind();
            cmdLogin.Dispose();
            con.Close();

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View7);

            SqlConnection con = new SqlConnection(@connectionString);
            con.Open();

            string checkQuery;
            SqlCommand cmdLogin = new SqlCommand();

            checkQuery = "select * from Sponsor";
            cmdLogin = new SqlCommand(checkQuery, con);
            SqlDataReader reader = cmdLogin.ExecuteReader();
            GridView6.DataSource = reader;
            GridView6.DataBind();
            cmdLogin.Dispose();
            con.Close();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View8);

            SqlConnection con = new SqlConnection(@connectionString);
            con.Open();

            string checkQuery;
            SqlCommand cmdLogin = new SqlCommand();

            checkQuery = "select * from Participant where par_cnic = '"+TextBox1.Text+"'";
            cmdLogin = new SqlCommand(checkQuery, con);
            SqlDataReader reader = cmdLogin.ExecuteReader();
            GridView7.DataSource = reader;
            GridView7.DataBind();
            cmdLogin.Dispose();
            con.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View10);

            SqlConnection con = new SqlConnection(@connectionString);
            con.Open();

            string checkQuery;
            SqlCommand cmdLogin = new SqlCommand();
            string date = "2020-" + DropDownList2.Text + '-' + DropDownList3.Text;

            checkQuery = "select * from Events where eventDate = '"+date+"'"; 
            cmdLogin = new SqlCommand(checkQuery, con);
            SqlDataReader reader = cmdLogin.ExecuteReader();
            GridView9.DataSource = reader;
            GridView9.DataBind();
            cmdLogin.Dispose();
            con.Close();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View11);

            SqlConnection con = new SqlConnection(@connectionString);
            con.Open();

            string checkQuery;
            SqlCommand cmdLogin = new SqlCommand();

            checkQuery = "select count(participantKey) as TotalParticipants from EventParticipatedBy where eventKey= (select eventId from events where eventName = '"+DropDownList4.Text+"')";
            cmdLogin = new SqlCommand(checkQuery, con);
           
            SqlDataReader reader = cmdLogin.ExecuteReader();
            GridView10.DataSource = reader;
            GridView10.DataBind();
            cmdLogin.Dispose();
            con.Close();
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View12);

            SqlConnection con = new SqlConnection(@connectionString);
            con.Open();

            string checkQuery;
            SqlCommand cmdLogin = new SqlCommand();

            checkQuery = "select count(participantKey) as TotalParticipants from EventParticipatedBy where eventKey=1";
            cmdLogin = new SqlCommand(checkQuery, con);

            SqlDataReader reader = cmdLogin.ExecuteReader();
            GridView11.DataSource = reader;
            GridView11.DataBind();
            cmdLogin.Dispose();
            con.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button8_Click(object sender, EventArgs e)
        {

        }

        protected void Button8_Click1(object sender, EventArgs e)
        {

        }
    }
}