using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Payment : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        Label2.Text = Session["User"].ToString();
        Label3.Text = Session["Buy"].ToString();
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Buy.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            
            Response.Redirect("~/Cashpayment.aspx");
        }
        catch (Exception ex)
        {

            Response.Write(Label4.Text = "Error Data allredy Insert" + ex.ToString());
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}