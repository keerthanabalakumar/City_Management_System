using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String date = DateTime.Now.ToLongDateString();
        this.lb1date.Text = date;
    }

    protected void Publicpage(object sender, EventArgs e)
    {
        Response.Redirect("http://webstrar32.fulton.asu.edu/publicpage.html");
    }

    protected void Signinmember(object sender, EventArgs e)
    {
        Session.Remove("role");
        Session["role"] = "member";
        Response.Redirect("Login.aspx?ReturnURL=MemberPages/Member.aspx");
    }

    protected void Signup(object sender, EventArgs e)
    {
        Response.Redirect("Imageverifier.aspx");
    }

    protected void ViewMember(object sender, EventArgs e)
    {
        if (Session["role"] != null)
        {
            String sessionStr = Session["role"].ToString();
            if (sessionStr.Equals("member"))
            {
                Response.Redirect("MemberPages/Member.aspx");
            }
        }
        else
        {
            Response.Redirect("~/Error.aspx");
        }
    }

    protected void Signinstaff(object sender, EventArgs e)
    {
        Session.Remove("role");
        Session["role"] = "staff";
        Response.Redirect("Login.aspx?ReturnURL=StaffPages/Staff.aspx");
    }

    protected void ViewStaff(object sender, EventArgs e)
    {
        if (Session["role"] != null)
        {
            String sessionStr = Session["role"].ToString();
            if (sessionStr.Equals("staff"))
            {
                Response.Redirect("StaffPages/Staff.aspx");
            }
        }
        else
        {
            Response.Redirect("~/Error.aspx");
        }
    }

    protected void test(object sender, EventArgs e)
    {
        Response.Redirect("~/Test.aspx");
    }
}