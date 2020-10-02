using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    protected void ButtonLogin_Click(object sender, EventArgs e)
    {

        //connection

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString); 
        conn.Open();

        //check user

        string Checkuser = "select count(*) from Userdata where User_Name='" + TextBoxLuser.Text + "'";
        SqlCommand com = new SqlCommand(Checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();

            //check password

            string CheckePasswordQuery = " select Password from Userdata where User_Name='" + TextBoxLuser.Text + "'";
            SqlCommand Passcom = new SqlCommand(CheckePasswordQuery, conn);
            string Password = Passcom.ExecuteScalar().ToString();
           
            if (Password == TextBoxLPassword.Text)
            {
              
                //load user information in session

                    Session["User"] = TextBoxLuser.Text;
                    Response.Redirect("User.aspx");
            }
            else
            {
                Response.Write(Label1.Text="Password is not Correct");

            }

        }
        else
        {
            Response.Write(Label1.Text = "User Name is Not Correct");

        }
    }
}