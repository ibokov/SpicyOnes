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
            MySqlCommand cmd = new MySqlCommand("SELECT HS_Name, SUM(featured_in.Num_times_featured) as 'Frequency'" +
                                                "FROM hotsauce h "+
                                                "INNER JOIN featured_in ON h.HS_ID = featured_in.HS_ID "+
                                                "WHERE(SELECT SUM(featured_in.Num_times_featured) FROM featured_in f WHERE f.HS_ID = h.HS_ID) > 1 "+
                                                "GROUP BY HS_Name "+
                                                "ORDER BY Frequency DESC", con);

            MySqlDataAdapter Adpt = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            Adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}