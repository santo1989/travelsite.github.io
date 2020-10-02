using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None; // privent page load fail 
    }
    protected void ButtonLogin_Click(object sender, EventArgs e) // login
    {
        // sql connection

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();

        // check user name

        string Checkuser = "select count(*) from Admindata where User_Name='" + TextBoxLuser1.Text + "'";
        SqlCommand com = new SqlCommand(Checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();

            // chack password

            string CheckePasswordQuery = " select Password from Admindata where User_Name='" + TextBoxLuser1.Text + "'";
            SqlCommand Passcom = new SqlCommand(CheckePasswordQuery, conn);
            string Password = Passcom.ExecuteScalar().ToString();
            if (Password == TextBoxLPassword1.Text)
            {
                // entry login information in session
    
                Session["New1"] = TextBoxLuser1.Text;
                    Response.Redirect("Manager.aspx");
            }
            else
            {
                Response.Write(Label1.Text = "Password is not Correct");

            }

        }
        else
        {
            Response.Write(Label1.Text="User Name is Not Correct");

        }
    }
}