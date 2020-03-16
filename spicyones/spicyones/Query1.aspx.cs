using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;


namespace spicyones
{
    public partial class Query1 : System.Web.UI.Page
    {
        MySqlConnection connect = new MySqlConnection(ConfigurationManager.ConnectionStrings["spicyonesConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            if (!this.IsPostBack)
            {
                
                {
                    connect.Open();
                    using (MySqlCommand cmd = new MySqlCommand("select Guest_Name, Guest_ID from guest"))
                    {
                        cmd.Connection = connect;
                        
                        MySqlDataAdapter mySqlDataAdapter = new MySqlDataAdapter(cmd);
                        DataSet myDataSet = new DataSet();

                        mySqlDataAdapter.Fill(myDataSet);
                        DropDownList1.DataSource = myDataSet;

                        DropDownList1.DataTextField = "Guest_Name";
                        DropDownList1.DataValueField = "Guest_Name";
                        DropDownList1.DataBind();
                        connect.Close();
                    }
                }
                
            }
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["spicyonesConnectionString"].ConnectionString);
            MySqlCommand cmd = new MySqlCommand("SELECT DISTINCT g.Guest_Name, EPISODES.Episode_ID, SEASON.Season_Number FROM GUEST g JOIN APPEARS_IN ON APPEARS_IN.Guests_ID = g.Guest_ID JOIN EPISODES ON APPEARS_IN.Episodes_ID = EPISODES.Episode_ID JOIN SEASON ON SEASON.season_number = EPISODES.Season_Num WHERE g.GUEST_NAME = '" + DropDownList1.SelectedValue + "' ORDER BY SEASON.Season_Number", con);
            MySqlDataAdapter Adpt = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            Adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["spicyonesConnectionString"].ConnectionString);
            MySqlCommand cmd = new MySqlCommand("SELECT DISTINCT g.Guest_Name, EPISODES.Episode_ID, SEASON.Season_Number FROM GUEST g JOIN APPEARS_IN ON APPEARS_IN.Guests_ID = g.Guest_ID JOIN EPISODES ON APPEARS_IN.Episodes_ID = EPISODES.Episode_ID JOIN SEASON ON SEASON.season_number = EPISODES.Season_Num WHERE g.GUEST_NAME = '" + DropDownList1.SelectedValue + "' ORDER BY SEASON.Season_Number", con);
            MySqlDataAdapter Adpt = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            Adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}