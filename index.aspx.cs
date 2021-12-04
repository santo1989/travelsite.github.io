using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString); 
            conn.Open();
            conn.Close();
          

        }
    }
    protected void Button1_Click(object sender, EventArgs e) //insert contact information;
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString); 
            conn.Open();
            string insertQuery = "insert into Messages(User_Name,Email,Messages,Mobile) values (@Uname ,@email ,@messages,@mobile)";
            SqlCommand com = new SqlCommand(insertQuery, conn);

            com.Parameters.AddWithValue("@Uname", TextBoxUser.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
          
            com.Parameters.AddWithValue("@Messages", TextBoxAddress.Text);
           
            com.Parameters.AddWithValue("@mobile", TextBoxMobile.Text);
            com.ExecuteNonQuery();


            Response.Write(Label1.Text = "Your Messages sending is Successfull");

            conn.Close();
        }

        catch (Exception ex)
        {

            Response.Write(Label1.Text = "Error:" + ex.ToString());
        }
    }
}