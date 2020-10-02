using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PackageView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        //check package id information and avoid extra data  

        string input = Request.QueryString.ToString();
        int result = 0;
        bool success = int.TryParse(new string(input
                             .SkipWhile(x => !char.IsDigit(x))
                             .TakeWhile(x => char.IsDigit(x))
                             .ToArray()), out result);
       
        // package id save in session

        Session["Buy"] = result;
            //Request.QueryString.ToString(); 
            Server.Transfer("~/Payment.aspx");        
            
           
        
    }
}