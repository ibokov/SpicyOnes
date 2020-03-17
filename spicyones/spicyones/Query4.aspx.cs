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
    public partial class Query4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["spicyonesConnectionString"].ConnectionString);
            MySqlCommand cmd = new MySqlCommand("SELECT guest.Guest_Name, season.Season_Number, episodes.Ep_Name, hotsauce.HS_Name " +
    "From guest " +
    "INNER JOIN appears_in ON guest.Guest_ID = appears_in.GUESTS_ID " +
    "INNER JOIN episodes ON appears_in.EPISODES_ID = episodes.Episode_ID " +
    "INNER JOIN hall_of_shame ON guest.Guest_ID = hall_of_shame.GUEST_ID " +
    "INNER JOIN season ON episodes.Season_Num = season.Season_Number " +
    "INNER JOIN featured_in ON season.Season_Number = featured_in.Season_Number " +
    "INNER JOIN hotsauce ON featured_in.HS_ID = hotsauce.HS_ID " +
    "WHERE hall_of_shame.GUEST_ID = guest.Guest_ID AND hall_of_shame.HS_Fail_ID = hotsauce.HS_ID " +
    "ORDER BY Season_Number ASC", con);

            MySqlDataAdapter Adpt = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            Adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}