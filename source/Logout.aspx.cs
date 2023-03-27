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

public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["LoginType"] = null;
        Session["LoginName"] = null;
        Session["LastLogin"] = null;
        Session["DisplayName"] = null;
        Session.Abandon();
        Response.Write("<script language=javascript>");

        Response.Write("{");
        Response.Write(" var Backlen=history.length;");

        Response.Write(" history.go(-Backlen);");
        Response.Write(" window.location.href='Login.aspx'; ");


        Response.Write("}");
        Response.Write("</script>");
       
    }
}
