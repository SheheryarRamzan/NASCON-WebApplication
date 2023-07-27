﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace WebApplication2
{
    public partial class AdminAdministratorEditForm : System.Web.UI.Page
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

            checkQuery = "select * from Administration";
            cmdLogin = new SqlCommand(checkQuery, con);
            SqlDataReader reader = cmdLogin.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            cmdLogin.Dispose();
            con.Close();
        }


        protected void MultiView1_ActiveViewChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);

            try
            {
                SqlConnection con = new SqlConnection(@connectionString);
                SqlCommand cmd;
                con.Open();
                string adminId = TextBox1.Text,
                    adminName = TextBox2.Text;

                string query = "insert into Administration values('" + adminId + "','" + adminName + "')";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

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

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);
            try
            {
                SqlConnection con = new SqlConnection(@connectionString);
                SqlCommand cmd;
                con.Open();
                string adminId = TextBox3.Text,
                    adminName = TextBox6.Text;

                string query = "update Administration set adminUserName = '" + adminName + "' where adminId =  '" + adminId + "'";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();

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

        protected void Button6_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);

            SqlConnection con = new SqlConnection(@connectionString);
            SqlCommand cmd;
            con.Open();
            string adminId = TextBox5.Text;

            string query = "delete from Administration where adminId = '"+adminId+"'"; 
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            cmd.Dispose();
            con.Close();
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
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

        protected void Button7_Click(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);
        }
    }
}