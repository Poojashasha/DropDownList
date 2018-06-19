using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace DropDownList
{
    public partial class HiddenField : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadEmployee();
            }
        }

        private void LoadEmployee()
        {
            string cs = ConfigurationManager.ConnectionStrings["DropDown"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                string sqlQuery = "select id, Name, Gender, DeptName from tblEmployee where id=2";
                SqlCommand cmd = new SqlCommand(sqlQuery, con);
                con.Open();
                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        txtName.Text = rdr["Name"].ToString();
                        txtGender.Text = rdr["Gender"].ToString();
                        txtDeptName.Text = rdr["DeptName"].ToString();
                        HiddenField1.Value = rdr["id"].ToString();
                    }
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string cs = ConfigurationManager.ConnectionStrings["DropDown"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                string sqlQuery = "update tblEmployee set Name=@Name, Gender=@Gender, DeptName=@DeptName where id=@id ";
                SqlCommand cmd = new SqlCommand(sqlQuery, con);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Gender", txtGender.Text);
                cmd.Parameters.AddWithValue("@DeptName", txtDeptName.Text);
                cmd.Parameters.AddWithValue("@id", HiddenField1.Value);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                txtName.Text = "";
                txtGender.Text = "";
                txtDeptName.Text = "";
            }
        }

        protected void buttton2_Click(object sender, EventArgs e)
        {
            LoadEmployee();
        }
    }
}

     