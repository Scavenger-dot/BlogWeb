using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace Blog
{
    public partial class WriteArticle : System.Web.UI.Page
    {
        static String connstring = ConfigurationManager.ConnectionStrings["blogConnectionString"].ConnectionString;
        MySqlConnection conn = new MySqlConnection(connstring);

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
           
        }
    }
}