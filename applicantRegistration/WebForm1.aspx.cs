using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace applicantRegistration
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Ensure the page is not processed again on postback
            if (!IsPostBack)
            {
                ddlCourseInterest.Items.Insert(0, new ListItem("Select Course", ""));
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Validate inputs
            if (Page.IsValid)
            {
                string fullName = txtFullName.Text.Trim();
                string email = txtEmail.Text.Trim();
                string phone = txtPhoneNumber.Text.Trim();
                string address = txtAddress.Text.Trim();
                string gender = rblGender.SelectedValue;
                string courseInterest = ddlCourseInterest.SelectedValue;
                string resumePath = "";

                // Handle file upload (if provided)
                if (fuResume.HasFile)
                {
                    string fileName = Path.GetFileName(fuResume.FileName);
                    string uploadFolder = Server.MapPath("~/Resumes/"); // Ensure this folder exists
                    resumePath = "~/Resumes/" + fileName;
                    fuResume.SaveAs(Path.Combine(uploadFolder, fileName));
                }

                // Save applicant data (Example: Saving in Session, you can replace with DB storage)
                Session["ApplicantData"] = new
                {
                    FullName = fullName,
                    Email = email,
                    Phone = phone,
                    Address = address,
                    Gender = gender,
                    CourseInterest = courseInterest,
                    Resume = resumePath
                };

                // Redirect or show a success message
                Response.Write("<script>alert('Application submitted successfully!');</script>");
            }
        }
    }
}
