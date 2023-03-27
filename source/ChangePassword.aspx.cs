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

public partial class ChangePassword : System.Web.UI.Page
{
    DatabaseLayer objDb = new DatabaseLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Convert.ToString(Session["LoginType"]) == "")
            {
                Response.Redirect("Login.aspx");
            }

            if (IsPostBack == false)
            {



                TxtOldPassword.Text = "";
                TxtNewPassword.Text = "";
                TxtConfirmPassword.Text = "";
                TxtOldPassword.Focus();
            }
        }
        catch (Exception ex) { }
    }

    protected void CmdSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            if (TxtNewPassword.Text != TxtConfirmPassword.Text)
            {
                objDb.CreateMessageAlert(this, "New and confirm password dose not match", "123");
                return;

            }

            try
            {
                DataSet dsLogin = new DataSet();
                if (Session["LoginType"] == "Student")
                {
                    Session["LoginType"] = "Student";
                    dsLogin = objDb.GetDataset("select * from student_master where student_id=" + Session["LoginName"] + " and student_password='" + TxtOldPassword.Text + "'", "LoginMst");
                }
                else
                {
                    Session["LoginType"] = "Employee";
                    dsLogin = objDb.GetDataset("select * from employee_master where emp_login_name='" + Session["LoginName"] + "' and emp_login_password='" + TxtOldPassword.Text + "'", "LoginMst");
                }
                if (dsLogin != null)
                {
                    if (dsLogin.Tables["LoginMst"].Rows.Count > 0)
                    {

                        if (Session["LoginType"] == "Student")
                        {

                            objDb.ExecuteInsertUpdate("update student_master set student_lastlogin =getdate(), student_password='" + TxtNewPassword.Text + "' where student_id=" + Session["LoginName"]);
                        }
                        else
                        {

                            objDb.ExecuteInsertUpdate("update employee_master set emp_lastlogin =getdate(), emp_login_password='" + TxtNewPassword.Text + "' where emp_login_name='" + Session["LoginName"] + "'");


                        }
                        this.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script language=\"javaScript\">" + "alert('Password changed, system will redirect to re-login.');" + "window.location.href='Login.aspx';" + "<" + "/script>");

                    }
                    else
                    {
                        objDb.CreateMessageAlert(this, "Old Password is not correct", "123");
                        TxtOldPassword.Text = "";
                        TxtNewPassword.Text = "";
                        TxtConfirmPassword.Text = "";
                        TxtOldPassword.Focus();
                    }
                }


            }

            catch (Exception ex)
            {
                objDb.CreateMessageAlert(this, "Old Password is not correct", "123");
                TxtOldPassword.Text = "";
                TxtNewPassword.Text = "";
                TxtConfirmPassword.Text = "";
                TxtOldPassword.Focus();
            }
        }
    }
    protected void CmdReset_Click(object sender, EventArgs e)
    {
        TxtOldPassword.Text = "";
        TxtNewPassword.Text = "";
        TxtConfirmPassword.Text = "";
        TxtOldPassword.Focus();
    }
}
