using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Package : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["User"] != null)
        {
            Server.Transfer("~/User.aspx");
        }
        else
        {
            Labelwelcome.Text = "Guest";
        }
        //string sid = "";
        //sid = Sesion["User"];
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
        //identify the package id from event command

        if (e.CommandName == "ViewDetails")
        {
            Response.Redirect("PackageView1.aspx?Id= " + e.CommandArgument.ToString());
        }
    }
}