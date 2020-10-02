using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        //load userdata for check

        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string Checkuser = "select count(*) from Userdata where User_Name='" + TextBoxUser.Text + "'";
            SqlCommand com = new SqlCommand(Checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {

                Label1.Text = "User Name Alredy Exists";

            }

            conn.Close();
        
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // registration

        try
        {
            // check user name duplicate data

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string Checkuser = "select count(*) from Userdata where User_Name='" + TextBoxUser.Text + "'";
            SqlCommand com1 = new SqlCommand(Checkuser, conn);
            int temp = Convert.ToInt32(com1.ExecuteScalar().ToString());
            if (temp == 1)
            {

                Label1.Text = "User Name Alredy Exists";

            }


            else
            {

                //new entry for registration

                SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn1.Open();
                string insertQuery = "insert into Userdata(User_Name,Email,Password,Address,Utype,Full_Name,Mobile) values (@Uname ,@email ,@password ,@address,'U' ,@fullname ,@mobile)";
                SqlCommand com = new SqlCommand(insertQuery, conn1);

                com.Parameters.AddWithValue("@Uname", TextBoxUser.Text);
                com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                com.Parameters.AddWithValue("@password", TextBoxPassword.Text);
                com.Parameters.AddWithValue("@address", TextBoxAddress.Text);
                com.Parameters.AddWithValue("@fullname", TextBoxFullName.Text);
                com.Parameters.AddWithValue("@mobile", TextBoxMobile.Text);
                com.ExecuteNonQuery();


                Response.Write(Label1.Text = "Your Registration is Successfull");

                conn.Close();
            }
        }

        catch (Exception ex)
        {

            Response.Write(Label1.Text = "Error:" + ex.ToString());
        }
    }
}