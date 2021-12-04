using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Text;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text;
using iTextSharp.text.pdf.draw;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.xml;

public partial class Cashpayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        
        //show login information;

        Label2.Text += Session["User"].ToString();
       
        Label5.Text += Session["User"].ToString();

        //show package booking information;

        Label3.Text += Session["Buy"].ToString();

    }

    public DataTable GetData1() //tacking booking information;
        {  
        DataTable dt1 = new DataTable();
        DataRow dr1;
        dt1.Columns.Add("Booking_Date", Type.GetType("System.DateTime")); //tacking booking time;
        dt1.Columns.Add("User_Name");
        dt1.Columns.Add("Mobile");
        dt1.Columns.Add("Address");
        dr1 = dt1.NewRow();

        //connection;

        SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        scon.Open();

        //check user from login session

        string valueA = Session["User"].ToString();
        String myquery = "select * from [Userdata] where [User_Name]='" + valueA + "'";     
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da1 = new SqlDataAdapter();
        da1.SelectCommand = cmd;
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        dr1["Booking_Date"] = System.Convert.ToDateTime(DateTime.Now.ToString("yyyy-MM-dd h:mm tt")); 
        dr1["User_Name"] = ds1.Tables[0].Rows[0]["User_Name"].ToString();
        dr1["Mobile"] = ds1.Tables[0].Rows[0]["Mobile"].ToString();
        dr1["Address"] = ds1.Tables[0].Rows[0]["Address"].ToString();
        dt1.Rows.Add(dr1);
        GridView2.DataSource = dt1;
        GridView2.DataBind();
         return dt1;
        }
    public DataTable GetData2() //create booking informatin from user seesion and booking session;
    {
        DataTable dt = new DataTable();
        DataRow dr;
        //dt.Columns.Add("SId");
        dt.Columns.Add("Package_Id");
        dt.Columns.Add("Package_Name");
        dt.Columns.Add("Quantity");
        dt.Columns.Add("Price");
        dt.Columns.Add("Total_Price");
        dr = dt.NewRow();
        SqlConnection scon = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        scon.Open();

        //find package booking id from package booking session information;

        String myquery = "select * from Package where Package_Id=" + Session["Buy"].ToString();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        //dr["SId"] = 1;
        dr["Package_Id"] = ds.Tables[0].Rows[0]["Package_Id"].ToString();
        dr["Package_Name"] = ds.Tables[0].Rows[0]["Package_Name"].ToString();
        dr["Quantity"] = TextBox1.Text;
        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
        int Price = Convert.ToInt32(ds.Tables[0].Rows[0]["Price"].ToString());
        int Quantity = Convert.ToInt32(TextBox1.Text);
        int Total_Price = Price * Quantity; //find total from user input;
        dr["Total_Price"] = Total_Price;
        dt.Rows.Add(dr);
        return dt;
    }
    protected void Button1_Click(object sender, EventArgs e) //show package booking information;
    {
                     DataTable dt = GetData2();
                    Session["BuyData"] = dt;
                    DataTable dt1 = GetData1();
                    Session["UserData"] = dt1;
                    DataTable user = (DataTable)Session["UserData"];
                    DataTable buy = (DataTable)Session["BuyData"];
                    DataTable MD = MergeData(user, buy);
                    ViewState["data"] = MD;
                    Session["data"] = MD;
                    GridView2.DataSource = MD;
                    GridView2.DataBind();                    

    }


    public DataTable MergeData(DataTable dt, DataTable dt1) //marge package booking data from login session and booking session information;
    {
        dt.Columns.Add("Package_Id");
        dt.Columns.Add("Package_Name");
        dt.Columns.Add("Price");
        dt.Columns.Add("Quantity");
        dt.Columns.Add("Total_Price");

        for (int i = 0; i < dt.Rows.Count; i++)
        {

            dt.Rows[i]["Package_Id"] = dt1.Rows[i]["Package_Id"];
            dt.Rows[i]["Package_Name"] = dt1.Rows[i]["Package_Name"];
            dt.Rows[i]["Price"] = dt1.Rows[i]["Price"];
            dt.Rows[i]["Quantity"] = dt1.Rows[i]["Quantity"];
            dt.Rows[i]["Total_Price"] = dt1.Rows[i]["Total_Price"];
        }
        return dt;
    }


    protected void Button2_Click(object sender, EventArgs e) //insert package booking information;
    {
        {
            DataTable dt = (DataTable)ViewState["data"];
            string sql = "INSERT INTO Booking (Booking_Date,User_Name, Mobile, Address, Package_Id, Package_Name, Price, Quantity, Total_Price) VALUES (@Booking_Date, @User_Name, @Mobile, @Address, @Package_Id, @Package_Name, @Price, @Quantity, @Total_Price)";
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString))
            {
                conn.Open();
                foreach (DataRow r in dt.Rows)
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = sql;
                    cmd.Parameters.AddWithValue("@Booking_Date", r["Booking_Date"]);
                    cmd.Parameters.AddWithValue("@User_Name", r["User_Name"]);
                    cmd.Parameters.AddWithValue("@Mobile", r["Mobile"]);
                    cmd.Parameters.AddWithValue("@Address", r["Address"]);
                    cmd.Parameters.AddWithValue("@Package_Id", r["Package_Id"]);
                    cmd.Parameters.AddWithValue("@Package_Name", r["Package_Name"]);
                    cmd.Parameters.AddWithValue("@Price", r["Price"]);
                    cmd.Parameters.AddWithValue("@Quantity", r["Quantity"]);
                    cmd.Parameters.AddWithValue("@Total_Price", r["Total_Price"]);
                    cmd.ExecuteNonQuery();

                }
                Response.Write(Label5.Text = "insert ok");
            }
            

        }
        
                
        Response.Redirect("~/user.aspx");
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {


    }

    protected void TextBox1_TextChanged(object sender, EventArgs e) //user data for quentity of booking;
    {
        int i = Convert.ToInt32(TextBox1.Text);
    }

    protected void Button3_Click(object sender, EventArgs e) //print package booking information;
    {
        {
            int columnsCount = GridView2.HeaderRow.Cells.Count;
            PdfPTable pdfTable = new PdfPTable(columnsCount);
            foreach (TableCell gridViewHeaderCell in GridView2.HeaderRow.Cells)
            {
                Font font = new Font();
                font.Color = new BaseColor(GridView2.HeaderStyle.ForeColor);
                PdfPCell pdfCell = new PdfPCell(new Phrase(gridViewHeaderCell.Text, font));                
                pdfCell.BackgroundColor = new BaseColor(GridView2.HeaderStyle.BackColor);               
                pdfTable.AddCell(pdfCell);
            }

            foreach (GridViewRow gridViewRow in GridView2.Rows)
            {
                if (gridViewRow.RowType == DataControlRowType.DataRow)
                {                    
                    foreach (TableCell gridViewCell in gridViewRow.Cells)
                    {
                        Font font = new Font();
                        font.Color = new BaseColor(GridView2.RowStyle.ForeColor);
                        PdfPCell pdfCell = new PdfPCell(new Phrase(gridViewCell.Text, font));
                        pdfCell.BackgroundColor = new BaseColor(GridView2.RowStyle.BackColor);
                        pdfTable.AddCell(pdfCell);
                    }
                }
            }

            
            Document pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
            PdfWriter.GetInstance(pdfDocument, Response.OutputStream);
            pdfDocument.Open();
            pdfDocument.Add(pdfTable);
            pdfDocument.Close();
            Response.ContentType = "application/pdf";
            Response.AppendHeader("content-disposition", "attachment;filename=Booking.pdf");
            Response.Write(pdfDocument);
            Response.Flush();
            Response.End();
        }
    }
}


