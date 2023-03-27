using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Registrationdetails : System.Web.UI.Page
{
    DatabaseLayer objDb = new DatabaseLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["LoginType"]) == "")
        {
            Response.Redirect("Login.aspx");
        }
        if (Page.IsPostBack == true)
        {
            return;
        }

        try

        {
            DdlStatus.Items.Add("Pending");
            DdlStatus.Items.Add("Approved");
            DdlStatus.Items.Add("Rejected");


            //get registration details
            DataSet dsStudent = new DataSet();
            dsStudent = objDb.GetDataset("select * from student_master,course_master where student_id=" + Request.QueryString["id"].ToString() + " and student_course_id=course_id", "StudentMst");
            if (dsStudent != null)
            {
                if (dsStudent.Tables["StudentMst"].Rows.Count > 0)
                {
                    sp_reg_id.InnerHtml = Convert.ToString(dsStudent.Tables["StudentMst"].Rows[0]["student_id"]);
                    sp_course_name.InnerHtml = Convert.ToString(dsStudent.Tables["StudentMst"].Rows[0]["course_name"]);
                    sp_name.InnerHtml = Convert.ToString(dsStudent.Tables["StudentMst"].Rows[0]["student_full_name"]);
                    sp_gender.InnerHtml = Convert.ToString(dsStudent.Tables["StudentMst"].Rows[0]["student_gender"]);
                    sp_dob.InnerHtml = Convert.ToString(dsStudent.Tables["StudentMst"].Rows[0]["student_dob"]);
                    sp_address.InnerHtml = Convert.ToString(dsStudent.Tables["StudentMst"].Rows[0]["student_address"]);
                    sp_city.InnerHtml = Convert.ToString(dsStudent.Tables["StudentMst"].Rows[0]["student_city"]);
                    sp_country.InnerHtml = Convert.ToString(dsStudent.Tables["StudentMst"].Rows[0]["student_country_id"]);
                    sp_postal_code.InnerHtml = Convert.ToString(dsStudent.Tables["StudentMst"].Rows[0]["student_postal_code"]);

                    
                    sp_reg_date.InnerHtml = Convert.ToString(dsStudent.Tables["StudentMst"].Rows[0]["student_reg_date"]);
                    DdlStatus.Text = Convert.ToString(dsStudent.Tables["StudentMst"].Rows[0]["student_reg_status"]);
                
                
                }
            }

            //get student photo
            DataSet dsPhoto = new DataSet();
            dsPhoto = objDb.GetDataset("select * from document_master where doc_student_id=" + Request.QueryString["id"].ToString() + " and doc_type='Photograph'", "DocMst");
            if (dsPhoto != null)
            {
                if (dsPhoto.Tables["DocMst"].Rows.Count > 0)
                {
                    string filename = "";
                    filename = Convert.ToString(dsPhoto.Tables["DocMst"].Rows[0]["doc_file_name"]);

                    sp_image.InnerHtml = "<img src='studentdocs\\" + filename + "' width='125' height='150' border='1' />";

                }
            }

        }
        catch (Exception ex) { }

    }
    protected void CmdSubmit_Click(object sender, EventArgs e)
    {
        //
        objDb.ExecuteInsertUpdate("update student_master set student_reg_status='" + DdlStatus.Text + "', student_approve_date=getdate(), student_approve_by='" + Session["LoginName"].ToString() + "' where student_id=" + Request.QueryString["id"].ToString());
        
        if (ConfigurationManager.AppSettings["sendemail"] == "Y")
        {
            DataSet dsStu = new DataSet();
            dsStu = objDb.GetDataset("select * from student_master where student_id=" + Request.QueryString["id"].ToString() + " ", "StuMst");

            DataRow r;
            r=dsStu.Tables["StuMst"].Rows[0];


            string strbody = "Dear " + r["student_full_name"].ToString() + ",<br><br> Status of your registration no " + r["student_id"].ToString() + " is changed, login into student registration system to view updated status" +

            "<br><br>Regards<br>Villa College.";
            string tomail;
            tomail = r["student_email_id"].ToString() + "," + r["student_email_id"].ToString();
            String Ans = ClassEmail.SendMail(tomail, tomail, "SRS - Registration No " + Request.QueryString["ID"].ToString()  + " Updated", strbody);
            if (Ans == "OK")
            {

            }
        }
        
        this.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script language=\"javaScript\">" + "alert('Updated successfully. ');" + "window.location.href='MyPageEmployee.aspx';" + "<" + "/script>");

    }
    protected void CmdBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("myPageEmployee.aspx");
    }
}
