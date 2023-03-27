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

public partial class MyPageEmployee : System.Web.UI.Page
{
    DatabaseLayer objDb = new DatabaseLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["LoginType"]) == "")
        {
            Response.Redirect("Login.aspx");
        }
        try

        {
            //get registration details
            DataSet dsStudent = new DataSet();
            dsStudent = objDb.GetDataset("select student_id as [Reg ID], student_full_name as [Name], course_name as [Course], CONVERT(VARCHAR(10), student_reg_date, 105)  as [Reg Date], student_reg_status as [Reg Status], student_id from student_master,course_master where student_course_id=course_id order by student_id", "StudentMst");
            if (dsStudent != null)
            {
                if (dsStudent.Tables["StudentMst"].Rows.Count > 0)
                {
                    ViewState["ds"] = dsStudent.Tables["StudentMst"];
                    GridView1.DataSource = dsStudent;
                    GridView1.DataMember = "StudentMst";
                    GridView1.DataBind();
                }
            }



        }
        catch (Exception ex) { }

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowIndex >= 0)
        {
            string id = e.Row.Cells[0].Text;
            e.Row.Cells[5].Text = "<a href='Registrationdetails.aspx?id=" + id + "'>View</a>";
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
         
        GridView1.DataSource = (DataTable)ViewState["ds"];
        GridView1.DataMember = "StudentMst";
        GridView1.DataBind();
    }
}
