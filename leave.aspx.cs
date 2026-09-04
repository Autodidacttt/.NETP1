using System;

namespace _311Net_Practical5
{
    public partial class leave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // User must login first
            if (Session["Username"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                // Display username
                lblUsername.Text =
                    Session["Username"].ToString();

                // Display student name
                if (Session["StudentName"] != null)
                {
                    lblStudentName.Text =
                        Session["StudentName"].ToString();
                }

                // Display leave date
                if (Session["LeaveDate"] != null)
                {
                    lblLeaveDate.Text =
                        Session["LeaveDate"].ToString();
                }

                // Display leave type
                if (Session["LeaveType"] != null)
                {
                    lblLeaveType.Text =
                        Session["LeaveType"].ToString();
                }

                // Display reason
                if (Session["Reason"] != null)
                {
                    lblReason.Text =
                        Session["Reason"].ToString();
                }
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear Session
            Session.Clear();

            // End Session
            Session.Abandon();

            // Return to Login page
            Response.Redirect("login.aspx");
        }
    }
}