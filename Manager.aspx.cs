using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Manager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            if (Session["New1"] != null)
            {
                AdminLabel.Text += Session["New1"].ToString();
            }
            else
                Response.Redirect("Login.aspx");
        }
        
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void AdminLogoutButton_Click(object sender, EventArgs e)
    {
        Session["New1"] = null;
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
    
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        //working system of multiview in dropdown list
        
        MultiView1.ActiveViewIndex = Convert.ToInt32(DropDownList1.SelectedValue);
    }

    protected void Button1_Click(object sender, EventArgs e) //for transfer print
    {
        
        
            Response.Write(LabelConfig.Text = "Pdf Ready");
            Server.Transfer("~/Print.aspx");
        
    
    }
   
    

    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }
    protected void SqlDataSourcePackage_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
}