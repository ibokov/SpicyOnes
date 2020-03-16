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
    //MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["spicyonesConnectionString"].ConnectionString);
    public partial class Query2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["spicyonesConnectionString"].ConnectionString);
            MySqlCommand cmd = new MySqlCommand("SELECT H.HS_Name, C.NUM_HS_Produced FROM HOTSAUCE H JOIN COMPANY C ON C.Company_ID = H.Comp_ID WHERE C.Num_HS_Produced > 1", con);
            MySqlDataAdapter Adpt = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            Adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}