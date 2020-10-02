using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using System.Drawing;



public partial class _Default : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {

            // GridView GridView1 = new GridView();

            GridView1.AllowPaging = false;

            GridView1.DataSource = GetTable();

            GridView1.DataBind();


        }
                
             
    }

    static DataTable GetTable() //collect booking information
    {
        
        DataTable table = new DataTable();
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
 
        SqlCommand cmd = new SqlCommand("select * from Booking", conn);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        da.Fill(table);

        return table;

    }

    protected void Button1_Click(object sender, EventArgs e) //print booking information
    {

        GridView GridView2 = new GridView();

        GridView2.AllowPaging = false;

        GridView2.HeaderStyle.BackColor = System.Drawing.Color.Magenta;

        GridView2.DataSource = GetTable();

        GridView2.DataBind();

        Response.ContentType = "application/pdf";

        Response.AddHeader("content-disposition", "attachment;filename=User.pdf");

        Response.Cache.SetCacheability(HttpCacheability.NoCache);

        StringWriter sw = new StringWriter();

        HtmlTextWriter hw = new HtmlTextWriter(sw);



        GridView2.RenderControl(hw);

        StringReader sr = new StringReader(sw.ToString());

        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);

        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);

        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);

        pdfDoc.Open();

        htmlparser.Parse(sr);

        pdfDoc.Close();

        Response.Write(pdfDoc);

        Response.End();

    }

}