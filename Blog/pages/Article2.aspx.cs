using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Blog
{
    public partial class Article2 : System.Web.UI.Page
    {
        static String  connstring = ConfigurationManager.ConnectionStrings["blogConnectionString"].ConnectionString;
        MySqlConnection conn = new MySqlConnection(connstring);
      
        protected void Page_Load(object sender, EventArgs e)
        {
            
                bind();
            

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void bind()

        {

            string sqlstr = "select * from content order by id desc";

            conn = new MySqlConnection(connstring);

            MySqlDataAdapter myda = new MySqlDataAdapter(sqlstr, conn);

            DataSet myds = new DataSet();

            conn.Open();

            myda.Fill(myds);

            GridView1.DataSource = myds;

            //GridView1.DataKeyNames = new string[] { "id" };//主键

            GridView1.DataBind();

            conn.Close();

        }

      

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            conn.Open();
            String delete = "delete from content where id=" + GridView1.DataKeys[e.RowIndex].Value.ToString() + "";
            MySqlCommand comd = new MySqlCommand(delete, conn);
            comd.ExecuteNonQuery();
            conn.Close();
            bind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bind();
        }
    }
}