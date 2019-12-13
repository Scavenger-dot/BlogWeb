using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Blog
{
    public partial class reg : System.Web.UI.Page
    {
        MySqlConnection myconn = null;
        MySqlCommand comd = null;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            myconn = new MySqlConnection("Host =localhost;Database=blog;Username=root;Password=19981204");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            myconn.Open();
            comd = myconn.CreateCommand();
            comd.CommandText = "select count(username) from users where username="+TextBox1.Text+"";
        
           

            comd.CommandText = "insert into users values('0','"+TextBox1.Text+"','"+TextBox2.Text+"')";
            if (TextBox2.Text.Equals(TextBox3.Text))
            {
                comd.ExecuteNonQuery();
                myconn.Close();
                this.Response.Write(" <script language=javascript>alert('注册成功,点击确认');window.window.location.href='login.aspx';</script> ");
            }
            else
            {
                Label2.Text = "密码不一致";
            }
            
          
            
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
            
        }
    }
}