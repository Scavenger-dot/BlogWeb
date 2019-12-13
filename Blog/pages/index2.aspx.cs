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
    public partial class index2 : System.Web.UI.Page
    {
        static String connstring = ConfigurationManager.ConnectionStrings["blogConnectionString"].ConnectionString;
        MySqlConnection conn = new MySqlConnection(connstring);
        protected void Page_Load(object sender, EventArgs e)
        {
            bind();
        }
        public void bind()

        {

            string sqlstr = "select * from content order by id desc";

            conn = new MySqlConnection(connstring);

            MySqlDataAdapter myda = new MySqlDataAdapter(sqlstr, conn);

            DataSet myds = new DataSet();

            conn.Open();

            myda.Fill(myds);

            ListView1.DataSource = myds;

            //GridView1.DataKeyNames = new string[] { "id" };//主键

           ListView1.DataBind();

            conn.Close();

        }
    }
}