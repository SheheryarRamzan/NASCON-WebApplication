using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Windows.Forms;


namespace DataBase_SemesterProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            conn.Open();

            string checkuser = "select count(*) from FacultyMentor where mentorName= '" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();

            if (temp==1 && TextBox2.Text!="")
            {

                conn.Open();
                string checkid_category = "select count(*) from CategorySuperviseByFaculty where mentorKey= '" + TextBox2.Text + "'";
                SqlCommand com2 = new SqlCommand(checkid_category, conn);
                int temp2 = Convert.ToInt32(com2.ExecuteScalar().ToString());

                string checkid_event = "select count(*) from EventSuperviseByFaculty where mentorKey= '" + TextBox2.Text + "'";
                SqlCommand com3 = new SqlCommand(checkid_event, conn);
                int temp3 = Convert.ToInt32(com3.ExecuteScalar().ToString());

                if (temp2 == 1 && temp3 == 1)
                {
                    //Response.Write("Faculty Mentor Supervises both Event and Cateogory");
                    string url = "WebForm4.aspx?name=" + TextBox1.Text + "&id=" + TextBox2.Text;
                    Response.Redirect(url);
                    Response.Write("Faculty Mentor Supervises Both Category and Events");
                }
                else if (temp2==1)
                {
                    Response.Write("Faculty Mentor Supervises Full Category");
                    //Response.Write("Faculty Mentor Supervises Event");
                    string url = "WebForm4.aspx?name=" + TextBox1.Text + "&id=" + TextBox2.Text;
                    Response.Redirect(url);
                }
                else if(temp3==1)
                {
                    Response.Write("Faculty Mentor Supervises Event");
                    string url = "WebForm3.aspx?name=" + TextBox1.Text + "&id=" + TextBox2.Text;
                    Response.Redirect(url);
                }
                else if (temp3!=1 && temp2!=1)
                {
                    MessageBox.Show("Invalid ID entered!");
                    //Response.Write("Invalid ID entered");
                }
               
            }
            else
            {
                //Response.Write("");
                MessageBox.Show("Either UserName is not correct Or ID is missing!");
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}