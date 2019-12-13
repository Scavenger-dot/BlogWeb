using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace Blog.pages
{
    public partial class view : System.Web.UI.Page
    {
        MySqlConnection myconn = null;
        MySqlCommand comd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            myconn = new MySqlConnection("Host =localhost;Database=blog;Username=root;Password=19981204");
            string str = Request.Form["my-editormd-html-code"];
            string title = Request.Form["title"];
            myconn.Open();
            comd = myconn.CreateCommand();
            comd.CommandText = "insert into content values('0','"+title+"','"+str+"','"+DateTime.Now.ToString("yyyy-MM-dd")+"')";
            comd.ExecuteNonQuery();

        }
    }
}