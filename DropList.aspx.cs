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
    public partial class DropList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string cs = ConfigurationManager.ConnectionStrings["DropDown"].ToString();
            //using (SqlConnection con = new SqlConnection(cs))
            //{
            //    SqlCommand cmd = new SqlCommand("select  * from tblContinent");
            //    con.Open();
            //    DropDownList1.DataSource = cmd.ExecuteReader();
            //    DropDownList1.DataTextField = "City";
            //    DropDownList1.DataBind();
            //}
            if (!IsPostBack)
            {
               ddlContinents.DataSource = GetData("spGetCountinent", null);
                ddlContinents.DataBind();
                ListItem liadd = new ListItem("select Continent", "-1");
                ddlContinents.Items.Insert(0, liadd);

                ListItem liadd1 = new ListItem("select Country", "-1");
                ddlCountries.Items.Insert(0, liadd1);

                ListItem liadd2 = new ListItem("select City", "-1");
                ddlCities.Items.Insert(0, liadd2);
                ddlCountries.Enabled = false;
                ddlCities.Enabled = false;
            }

        }
        private DataSet GetData(string spName, SqlParameter spParameter)
        {
            string cs = ConfigurationManager.ConnectionStrings["DropDown"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter da = new SqlDataAdapter(spName, con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            if(spParameter != null)
            {
                da.SelectCommand.Parameters.Add(spParameter);
            }
            DataSet DS = new DataSet();
            da.Fill(DS);
            return DS;


        }

        protected void ddlContinents_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlContinents.SelectedIndex== 0)
            {
                ddlCountries.SelectedIndex = 0;
                ddlCountries.Enabled = false;
                ddlCities.SelectedIndex = 0;
                ddlCities.Enabled = false;
            }
            else
            {
                ddlCountries.Enabled = true;
                SqlParameter parameter = new SqlParameter("@ContinentId", ddlContinents.SelectedValue);
                DataSet Ds = GetData("spGetCountries", parameter);
                ddlCountries.DataSource = Ds;
                ddlCountries.DataBind();
                ListItem liadd1 = new ListItem("select Country", "-1");
                ddlCountries.Items.Insert(0, liadd1);
                ddlCities.SelectedIndex = 0;
                ddlCities.Enabled = false;
            }
        }

        protected void ddlCountries_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCountries.SelectedIndex == 0)
            {
                ddlCities.SelectedIndex = 0;
                ddlCities.Enabled = false;
            }
            else
            {
                ddlCities.Enabled = true;
                SqlParameter parameter = new SqlParameter("@CountryId", ddlCountries.SelectedValue);
                DataSet Ds1 = GetData("spGetCities", parameter);
                ddlCities.DataSource = Ds1;
                ddlCities.DataBind();
                ListItem liadd2 = new ListItem("select City", "-1");
                ddlCities.Items.Insert(0, liadd2);
            }
        }
    }
}