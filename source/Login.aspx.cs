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

public partial class Login : System.Web.UI.Page
{
    DatabaseLayer objDb = new DatabaseLayer();
    protected void Page_Load(object sender, EventArgs e)
    {



        try
        {
            if (IsPostBack == false)
            {
                TxtUserName.Text = "";
                TxtPassword.Text = "";
                Session["LoginType"] = null;
                Session["LoginName"] = null;
                Session["LastLogin"] = null;
                Session["DisplayName"] = null;
                TxtUserName.Focus();
            }
        }
        catch (Exception ex) { }
    }

    protected void CmdLogin_Click(object sender, EventArgs e)
    {
        if (Page.IsValid ==false )
        {
            return;
        }

        try
        {
            DataSet dsLogin = new DataSet();
            if (RdStudent.Checked == true)
            {
                Session["LoginType"] = "Student";
                dsLogin = objDb.GetDataset("select * from student_master where student_id=" + TxtUserName.Text + " and student_password='" + TxtPassword.Text + "'", "LoginMst");
            }
            else
            {
                Session["LoginType"] = "Employee";
                dsLogin = objDb.GetDataset("select * from employee_master where emp_login_name='" + TxtUserName.Text + "' and emp_login_password='" + TxtPassword.Text + "'", "LoginMst");
            }
            if (dsLogin != null)
            {
                if (dsLogin.Tables["LoginMst"].Rows.Count > 0)
                {

                        

                        
                        Session["LoginName"] = TxtUserName.Text ;
                        if (RdStudent.Checked == true)
                        {
                            Session["DisplayName"] = Convert.ToString(dsLogin.Tables["LoginMst"].Rows[0]["student_full_name"].ToString());
                            Session["LastLogin"] = Convert.ToString(dsLogin.Tables["LoginMst"].Rows[0]["student_lastlogin"].ToString());

                            if (Convert.ToString(Session["LastLogin"]) == "")
                            {
                                Response.Redirect("ChangePassword.aspx");
                            }
                            
                            
                            objDb.ExecuteInsertUpdate("update student_master set student_lastlogin =getdate() where student_id=" + TxtUserName.Text);
                            Response.Redirect("MyPageStudent.aspx");
                        }
                        else
                        {
                            Session["DisplayName"] = Convert.ToString(dsLogin.Tables["LoginMst"].Rows[0]["emp_full_name"].ToString());
                            Session["LastLogin"] = Convert.ToString(dsLogin.Tables["LoginMst"].Rows[0]["emp_lastlogin"].ToString());

                            if (Convert.ToString(Session["LastLogin"]) == "")
                            {
                                Response.Redirect("ChangePassword.aspx");
                            }
                            
                            objDb.ExecuteInsertUpdate("update employee_master set emp_lastlogin =getdate() where emp_login_name='" + TxtUserName.Text + "'");
                            Response.Redirect("MyPageEmployee.aspx");

                        }
                        
                }
                else
                {
                    Session["LoginType"] = null;
                    Session["LoginName"] = null;
                    Session["LastLogin"] = null;
                    Session["DisplayName"] = null;

                    objDb.CreateMessageAlert(this, "Invalid user name / password", "123");
                    TxtUserName.Text = "";
                    TxtPassword.Text = "";
                    TxtUserName.Focus();
                }
            }
        }
        catch (Exception ex)
        {


            objDb.CreateMessageAlert(this, "Invalid user name / password", "123");
            TxtUserName.Text = "";
            TxtPassword.Text = "";
            TxtUserName.Focus();
        }

    }
    protected void CmdReset_Click(object sender, EventArgs e)
    {
        Session["LoginType"] = null;
        Session["LoginName"] = null;
        Session["LastLogin"] = null;
        Session["DisplayName"] = null;

        TxtUserName.Text = "";
        TxtPassword.Text = "";
        RdStudent.Checked = true;
    }
}
