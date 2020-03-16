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
    public partial class Query3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["spicyonesConnectionString"].ConnectionString);
                MySqlCommand cmd = new MySqlCommand("SELECT h.HS_Name, h.HS_Scoville FROM FEATURED_IN f, HOTSAUCE h WHERE f.HS_ID = ANY(SELECT HS_ID FROM HOTSAUCE WHERE HS_Scoville > 200000)  AND f.HS_ID = h.HS_ID GROUP BY h.HS_Name", con);
                MySqlDataAdapter Adpt = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                Adpt.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}