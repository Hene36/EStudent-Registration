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

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        string StrMenu = "";
        if (Convert.ToString(Session["LoginType"]) == "")
        {
            StrMenu="<a href='Default.aspx'>Home</a> | <a href='Registration.aspx'>Registration</a> | <a href='Login.aspx'>Login</a>";
            //Response.Redirect("Login.aspx");
        }
        if (Convert.ToString(Session["LoginType"]) == "Student")
        {
            StrMenu = "<a href='MyPageStudent.aspx'>Home</a>| <a href='ChangePassword.aspx'>Change Password</a> | <a href='Logout.aspx'>Logout</a>" + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome " + Session["DisplayName"] + "[Student], Your last login was : " + Convert.ToString(Session["LastLogin"]);
            if (Convert.ToString(Session["LastLogin"]) == "")
            {
                StrMenu = "<a href='#MyPageStudent.aspx'>Home</a>| <a href='ChangePassword.aspx'>Change Password</a> | <a href='Logout.aspx'>Logout</a>" + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome " + Session["DisplayName"] + "[Student], &nbsp;&nbsp;<b><font color='red'>First Time Login</font></b>";
            }
        }
        if (Convert.ToString(Session["LoginType"]) == "Employee")
        {
            StrMenu = "<a href='MyPageEmployee.aspx'>Home</a>| <a href='ChangePassword.aspx'>Change Password</a> | <a href='Logout.aspx'>Logout</a>" + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome " + Session["DisplayName"] + "[Employee], Your last login was : " + Convert.ToString(Session["LastLogin"]);

            if (Convert.ToString(Session["LastLogin"]) == "")
            {
                StrMenu = "<a href='#MyPageEmployee.aspx'>Home</a>| <a href='ChangePassword.aspx'>Change Password</a> | <a href='Logout.aspx'>Logout</a>" + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome " + Session["DisplayName"] + "[Employee], Your last login was : &nbsp;&nbsp;<b><font color='red'>First Time Login</font></b>";
            }

        }


        sp_link.InnerHtml = StrMenu;
    }
}
