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
    public partial class TeamReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox11_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            conn.Open();

            SqlCommand cm;


            string query = "Insert into ParticipantTeam (teamname, ins_name,amb_id,teamleadcnic) values (@teamname ,@ins_name, @amb_id, @teamleadcnic)";
            cm = new SqlCommand(query, conn);

            cm.Parameters.AddWithValue("@teamname", TextBox1.Text);
            cm.Parameters.AddWithValue("@ins_name", TextBox2.Text);
            cm.Parameters.AddWithValue("@amb_id", TextBox3.Text);
            cm.Parameters.AddWithValue("@teamleadcnic", TextBox6.Text);

            cm.ExecuteNonQuery();


            string query2 = "Insert into Participant (par_name, par_email, par_cnic, par_contact)  values(@par_name ,@par_email, @par_cnic, @par_contact)";
            SqlCommand cm2 = new SqlCommand(query2, conn);

            /* TEAM MEMBER 2 */

            cm2.Parameters.AddWithValue("@par_name", TextBox8.Text);
            cm2.Parameters.AddWithValue("@par_email", TextBox9.Text);
            cm2.Parameters.AddWithValue("@par_cnic", TextBox10.Text);
            cm2.Parameters.AddWithValue("@par_contact", TextBox11.Text);

            cm2.ExecuteNonQuery();

            /* TEAM LEAD */


            string query3 = "Insert into Participant (par_name, par_email, par_cnic, par_contact)  values(@par_name ,@par_email, @par_cnic, @par_contact)";
            SqlCommand cm3 = new SqlCommand(query3, conn);

            cm3.Parameters.AddWithValue("@par_name", TextBox4.Text);
            cm3.Parameters.AddWithValue("@par_email", TextBox5.Text);
            cm3.Parameters.AddWithValue("@par_cnic", TextBox6.Text);
            cm3.Parameters.AddWithValue("@par_contact", TextBox7.Text);


            cm3.ExecuteNonQuery();

            /* TEAM MEMBER 3 */

            string query4 = "Insert into Participant (par_name, par_email, par_cnic, par_contact)  values(@par_name ,@par_email, @par_cnic, @par_contact)";
            SqlCommand cm4 = new SqlCommand(query4, conn);




            cm4.Parameters.AddWithValue("@par_name", TextBox12.Text);
            cm4.Parameters.AddWithValue("@par_email", TextBox13.Text);
            cm4.Parameters.AddWithValue("@par_cnic", TextBox14.Text);
            cm4.Parameters.AddWithValue("@par_contact", TextBox15.Text);

            cm4.ExecuteNonQuery();


            string event_name = DropDownList1.SelectedItem.Value;

            string eventId;
            eventId = "select eventId from events where eventName = '" + event_name + "'";
            SqlCommand cmd = new SqlCommand(eventId, conn);
            eventId = cmd.ExecuteScalar().ToString();


            string query5 = "insert into eventpartbyteam values('" + eventId + "','" + TextBox1.Text + "')";
            SqlCommand cm5 = new SqlCommand(query5, conn);
          


            cm5.ExecuteNonQuery();
            MessageBox.Show("Insertion successful");
            conn.Close();

        }
    }
}