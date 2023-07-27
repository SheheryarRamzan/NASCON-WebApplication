using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace DataBase_SemesterProject
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(local)\SQLEXPRESS;initial Catalog=proj;Integrated Security=True;");
            conn.Open();

            try
            {
                string query = "insert into Sponsor values (@sponsorId, @companyName, @representativeName, @repCNIC)";
                SqlCommand com = new SqlCommand(query, conn);
                //string query2 = "insert into StudentExecutive values (@studentId, @studentName, @batch, @position)";
                //SqlCommand com2 = new SqlCommand(query2, conn);

                com.Parameters.AddWithValue("@sponsorId", TextBox4.Text);
                com.Parameters.AddWithValue("@companyName", TextBox1.Text);
                com.Parameters.AddWithValue("@representativeName", TextBox2.Text);
                com.Parameters.AddWithValue("@repCNIC", Convert.ToInt64(TextBox3.Text));

                com.ExecuteNonQuery();


                string cat_id = "select categoryId from category where categoryName = @c_name";
                SqlCommand com3 = new SqlCommand(cat_id, conn);
                com3.Parameters.AddWithValue("@c_name", DropDownList2.SelectedItem.Value);
                cat_id = com3.ExecuteScalar().ToString();
                com3.ExecuteNonQuery();

                string query2 = "insert into SponsoredBy values (@categoryKey, @sponsorKey, @sponsor_type, @amount)";
                SqlCommand com2 = new SqlCommand(query2, conn);
                com2.Parameters.AddWithValue("@categoryKey", cat_id);
                com2.Parameters.AddWithValue("@c_name", DropDownList2.SelectedItem.Value);
                com2.Parameters.AddWithValue("@sponsorKey", TextBox4.Text);

                string price = DropDownList1.SelectedItem.Value;
                int i = price.IndexOf(".");
                int l = price.LastIndexOf(".");
                int desiredsize = price.Length - l - 1;
                string s1 = price.Substring(0, i);
                string s2 = price.Substring(l + 1, desiredsize);
                com2.Parameters.AddWithValue("@sponsor_type", price.Substring(0, i));
                com2.Parameters.AddWithValue("@amount", price.Substring(l + 1, desiredsize));

                com2.ExecuteNonQuery();
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
    }
}