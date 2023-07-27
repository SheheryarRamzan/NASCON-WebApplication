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
    public partial class ParticipantReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            conn.Open();

            SqlCommand cm;

            string query = "Insert into Participant values(@par_name ,@par_email, @par_cnic, @par_contact)";
            cm = new SqlCommand(query, conn);

            /* PARTICIPANT */

            cm.Parameters.AddWithValue("@par_name", TextBox3.Text);
            cm.Parameters.AddWithValue("@par_email", TextBox4.Text);
            cm.Parameters.AddWithValue("@par_cnic", TextBox7.Text);
            cm.Parameters.AddWithValue("@par_contact", TextBox6.Text);

            cm.ExecuteNonQuery();



            /*EVENT PPT BY*/

            string event_name = DropDownList1.SelectedItem.Value;

            string eventId;
            eventId = "select eventId from events where eventName = '" + event_name + "'";
            SqlCommand cmd = new SqlCommand(eventId, conn);
            eventId = cmd.ExecuteScalar().ToString();


            string query5 = "insert into EventParticipatedBy values('" + eventId + "','" + TextBox7.Text + "')";
            SqlCommand cm5 = new SqlCommand(query5, conn);

            cm5.ExecuteNonQuery();


            string price = DropDownList2.SelectedItem.Value;
            int i = price.IndexOf(".");
            int l = price.LastIndexOf(".");
            int desiredsize = price.Length - l - 1;

            string s1 = price.Substring(0, i);
            string s2 = price.Substring(l + 1, desiredsize);

            string query10 = "Insert into foodreg values(@price ,@menu)";
            SqlCommand cmd1 = new SqlCommand(query10, conn);


            cmd1.Parameters.AddWithValue("@price", s2);
            cmd1.Parameters.AddWithValue("@menu", s1);

            cmd1.ExecuteNonQuery();



            string query1 = "insert into regforfood values('" + TextBox7.Text + "','" + s2 + "')";
            SqlCommand cm69 = new SqlCommand(query1, conn);

            cm69.ExecuteNonQuery();


            MessageBox.Show("Insertion successful");
            conn.Close();
        }
    }
}