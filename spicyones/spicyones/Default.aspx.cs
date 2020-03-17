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
    public partial class _Default : Page
    {


        MySqlConnection connect = new MySqlConnection(ConfigurationManager.ConnectionStrings["spicyonesConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {   
            connect.Open();
            string find = "select * " +
                "from hotsauce " +
                "where HS_Name like '%" + TextBox1.Text + "%'";
            MySqlDataAdapter da = new MySqlDataAdapter(find, connect);
            

            DataSet ds = new DataSet();
            da.Fill(ds, "HS_Name");
            GridView1.DataSource = ds;
        
            GridView1.DataBind();
            GridView1.Visible = true;

            connect.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
        }
    }
}