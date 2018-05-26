using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.Serialization;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberPages_Member : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"] != null)
        {
            String sessionStr = Session["role"].ToString();
            if (sessionStr.Equals("member"))
            {
               
            }
        }
        else
        {
            Response.Redirect("~/Login.aspx?ReturnURL=Default.aspx");
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

    protected void signOut_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["usernameCookie"] != null)
        {
            HttpCookie Cookies = new HttpCookie("usernameCookie");
            Cookies.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(Cookies);
        }
        Session["role"] = null;
        FormsAuthentication.SignOut();
        Response.Redirect("~/Default.aspx");
    }

    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        CombinedService.Service1Client myClient1 = new CombinedService.Service1Client();
        try
        {
            lb1stopwords.Text = TextBox1.Text;
            String result = myClient1.WordFilter(lb1stopwords.Text);
            lb1stopwords.Text = result;
        }
        catch (Exception ec) { lb1stopwords.Text = ec.Message.ToString(); }
    }

    protected void btnSubmit_Click2(object sender, EventArgs e)
    {
        CombinedService.Service1Client myClient2 = new CombinedService.Service1Client();
        try
        {
            lb1stem.Text = TextBox2.Text;
            String result = myClient2.stemming(lb1stem.Text);
            lb1stem.Text = result;
        }
        catch (Exception ec) { lb1stem.Text = ec.Message.ToString(); }
    }
}