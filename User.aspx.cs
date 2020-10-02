using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            Labelwelcome.Text +=Session["User"].ToString();
        }
        else
            Response.Redirect("Login.aspx");

    }
    protected void Buttonlogout_Click(object sender, EventArgs e)
    {
        Session["User"] = null;
        Server.Transfer("Login.aspx");
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        //check package id from event command

        if (e.CommandName == "ViewDetails")
        {
            Server.Transfer("PackageView.aspx?Id= " + e.CommandArgument.ToString());
        }
    }
}