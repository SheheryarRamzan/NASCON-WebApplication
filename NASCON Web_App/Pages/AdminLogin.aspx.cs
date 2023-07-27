using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = "Data Source=(local)\\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;";


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@connectionString);
            con.Open();

            string userType = "Admin";
            string id = TextBox2.Text;
            string userName = TextBox3.Text;
            string checkQuery;
            SqlCommand cmdLogin  = new SqlCommand();
            int temp = 0;
            switch (userType){
                case "Admin":
                    checkQuery = "select count(*) from Administration where adminId = '" + id + "' and adminUserName = '" + userName + "'";
                    cmdLogin = new SqlCommand(checkQuery, con);
                    temp = Convert.ToInt32(cmdLogin.ExecuteScalar().ToString());
                    break;
                case "FacultyMentor":
                    checkQuery = "select count(*) from FacultyMentor where mentorId = '" + id + "' and mentorName = '" + userName + "'";
                    cmdLogin = new SqlCommand(checkQuery, con);
                    temp = Convert.ToInt32(cmdLogin.ExecuteScalar().ToString());
                    break;

            }
            cmdLogin.Dispose();
            con.Close();

            if(temp == 1)
            {
                Response.Write("User is available");
                Response.Redirect("AdminFacultyEditForm.aspx");
            }
            else { 
                Response.Write("User is not available");
            }


        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}