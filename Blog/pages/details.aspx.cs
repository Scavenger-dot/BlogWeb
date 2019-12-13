using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Blog.pages
{
    public partial class details : System.Web.UI.Page
    {
        static String connstring = ConfigurationManager.ConnectionStrings["blogConnectionString"].ConnectionString;
        MySqlConnection conn = new MySqlConnection(connstring);
        protected void Page_Load(object sender, EventArgs e)
        {
          
            string selectString = "select * from content where id=" + Request.QueryString["id"] + "";
            conn = new MySqlConnection(connstring);
           
            MySqlDataAdapter myda =new MySqlDataAdapter(selectString, conn);
            DataSet myds = new DataSet();
            conn.Open();
            myda.Fill(myds);

            MySqlCommand comd = new MySqlCommand(selectString, conn);
            MySqlDataReader reader = comd.ExecuteReader();
            while (reader.Read())
            {
                Label1.Text = reader[1].ToString();
               p1.InnerHtml = reader[2].ToString();
            }
           


        }
    }
}