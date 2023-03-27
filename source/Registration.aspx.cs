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

public partial class Registartion : System.Web.UI.Page
{
    DatabaseLayer objDb = new DatabaseLayer();
    ValidationFunctions objValidation = new ValidationFunctions();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            if (IsPostBack == false)
            {
                //fill drop down list
                //fill course
                objDb.FillDropDownList(DdlCourseName, "select course_id,course_name from course_master order by course_name", "course_name", "course_id");
                

                //fill country
                objDb.FillDropDownList(DdlCountry, "select country_id,country_name from country_master order by country_name", "country_name", "country_id");
                

                //fill doc type
                DdlType.Items.Add("--Select--");
                DdlType.Items.Add("Photograph");
                DdlType.Items.Add("Other Document");

                cleartext();
                TxtStudentName.Focus();

                //picture type
                FileUpload1.Attributes.Add("onchange", "return checkFileExtensionPicture(this,'" + FileUpload1.ClientID + "');");

            }
        }
        catch (Exception ex) { }
    }
    protected void CmdSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid ==true )
            {

                //dob validation
                string strDOB = null;
                if (TxtDOB.Text.Trim() != "")
                {
                    strDOB = objValidation.ConvertMyDateFormat(TxtDOB.Text);
                    if (strDOB == "")
                    {
                        objDb.CreateMessageAlert(this, "Date of Birth : " + objValidation.returnMsg, "123");
                        return;
                    }
                }
                //age must be betwwn 15 to 35
                int appdt = 0;
                DateTime fromdt, todt;
                fromdt = Convert.ToDateTime(strDOB);
                todt = Convert.ToDateTime(System.DateTime.Now.ToString());
                System.TimeSpan diffResult = todt.Subtract(fromdt);
                appdt = (diffResult.Days)/365;
                if (appdt < 15)
                {
                    objDb.CreateMessageAlert(this, "Check the date of birth, you must be more than 15 years old", "123");
                    return;
                }
                if (appdt >35)
                {
                    objDb.CreateMessageAlert(this, "Check the date of birth, you must be less than 35 years old", "123");
                    return;
                }

                //check for special charcter
                if (objValidation.IsValideCharacter(TxtStudentName.Text) == false)
                {
                    objDb.CreateMessageAlert(this,"Special characters not allowed in name.","123");
                    return;
                    
                }
                if (objValidation.IsValideCharacter(TxtAddress.Text) == false)
                {
                    objDb.CreateMessageAlert(this, "Special characters not allowed in address.", "123");
                    return;

                }
                if (objValidation.IsValideCharacter(TxtCity.Text) == false)
                {
                    objDb.CreateMessageAlert(this, "Special characters not allowed in city.", "123");
                    return;

                }
                if (objValidation.IsValideCharacter(TxtContactNo.Text) == false)
                {
                    objDb.CreateMessageAlert(this, "Special characters not allowed in contact no.", "123");
                    return;

                }
                if (objValidation.IsValideCharacter(TxtPostalCode.Text) == false)
                {
                    objDb.CreateMessageAlert(this, "Special characters not allowed in postal code.", "123");
                    return;

                }

                //drop down validation
                if (DdlCourseName.Text == "--Select--")
                {
                    objDb.CreateMessageAlert(this, "Select course name.", "123");
                    return;
                }
                if (DdlCountry.Text == "--Select--")
                {
                    objDb.CreateMessageAlert(this, "Select country.", "123");
                    return;
                } 
                
                string StrMF = "";
                if (RdMale.Checked ==true )
                {
                    StrMF ="Male";
                }
                else
                {
                    StrMF="Female";
                }

                //if user select file, user shuld enter title and type
                if (FileUpload1.HasFile == true)
                {
                    if (TxtTitle.Text == "")
                    {
                        objDb.CreateMessageAlert(this, "Enter phtograph title", "123");
                        return;
                    }
                    if (DdlType.Text == "Select Type")
                    {
                        objDb.CreateMessageAlert(this, "Select phtograpgh type", "123");
                        return;
                    }
                    int filesize1 = 0;
                    filesize1 = FileUpload1.PostedFile.ContentLength;

                    if (filesize1 / 1024 > 2048)
                    {
                        objDb.CreateMessageAlert(this, "Upload file max size is 2 MB", "123");
                        return;
                    }

                    if (objValidation.IsValideCharacter(TxtTitle.Text) == false)
                    {
                        objDb.CreateMessageAlert(this, "Special characters not allowed in document title.", "123");
                        return;

                    }
                }


                int lastid = 0;
                lastid =Convert.ToUInt16( objDb.ExecuteScaler("select max(student_id) from student_master"));

                string strQr = "";
                strQr = "insert into student_master values (" +
                    (lastid + 1) + "," +
                    DdlCourseName.SelectedValue + ",'" +
                    TxtStudentName.Text + "','" +
                    StrMF + "','" +
                    strDOB + "','" +
                    TxtAddress.Text + "','" +
                    TxtCity.Text + "','" +
                    DdlCountry.SelectedValue + "','" +
                    TxtPostalCode.Text + "','" +
                    TxtEmail.Text + "','" +
                    TxtContactNo.Text + "'," +
                    "'Pending'," +
                    "getdate()," +
                    "null," +
                    "null," +
                    (lastid + 1) + "," +
                    "null)";

                objDb.ExecuteInsertUpdate(strQr);
   
                //if user select file copy to folder and insert into table
                if (FileUpload1.HasFile == true)
                {
                    
                    string rootpath, filepath = "";
                     
                    rootpath = Server.MapPath(".");
                    string ext = "";
                    ext = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
  

                    filepath = rootpath + "\\StudentDocs\\" + (lastid + 1) + ext;
                    FileUpload1.SaveAs(filepath);

                    objDb.ExecuteInsertUpdate("insert into document_master values(" + (lastid + 1) + ",'" + DdlType.Text + "','" + TxtTitle.Text + "','" + (lastid + 1) + ext + "')");

                }



                //send email notification
                if (ConfigurationManager.AppSettings["sendemail"] == "Y")
                {



                    string strbody = "Dear " + TxtStudentName.Text  + ",<br><br>Your details are registered. Please note Registration no " + (lastid +1) + ". You can login into student registration system to view details by using your registration no." +

                    "<br><br>Regards<br>Villa College.";
                    string tomail;
                    tomail = TxtEmail.Text + "," + TxtEmail.Text;
                    String Ans = ClassEmail.SendMail(tomail, tomail, "SRS - Registration No " + (lastid + 1) + " Saved", strbody);
                    if (Ans == "OK")
                    {

                    }
                }

                //
                this.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script language=\"javaScript\">" + "alert('Registration successfully. Your Registration No is " + (lastid+1) +". Use your registration no to login in this site.');" + "window.location.href='Login.aspx';" + "<" + "/script>");

            }
        }
        catch (Exception ex) { }
    }
    protected void CmdReset_Click(object sender, EventArgs e)
    {
        cleartext();
    }
    void cleartext()
    {
        TxtStudentName.Text = "";
    }
}
