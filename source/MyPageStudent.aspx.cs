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

public partial class MyPageStudent : System.Web.UI.Page
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
            dsStudent = objDb.GetDataset("select * from student_master,course_master where student_id=" + Session["LoginName"] + " and student_course_id=course_id", "StudentMst");
            if (dsStudent != null)
            {
                if (dsStudent.Tables["StudentMst"].Rows.Count > 0)
                {
                    sp_reg_id.InnerHtml = Convert.ToString(dsStudent.Tables["StudentMst"].Rows[0]["student_id"]);
                    sp_course_name.InnerHtml = Convert.ToString(dsStudent.Tables["StudentMst"].Rows[0]["course_name"]);
                    sp_name.InnerHtml = Convert.ToString(dsStudent.Tables["StudentMst"].Rows[0]["student_full_name"]);
                    sp_reg_date.InnerHtml = Convert.ToString(dsStudent.Tables["StudentMst"].Rows[0]["student_reg_date"]);
                    sp_status.InnerHtml = Convert.ToString(dsStudent.Tables["StudentMst"].Rows[0]["student_reg_status"]);
                }
            }

              //get student photo
            DataSet dsPhoto = new DataSet();
            dsPhoto = objDb.GetDataset("select * from document_master where doc_student_id=" + Session["LoginName"] + " and doc_type='Photograph'", "DocMst");
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
}
