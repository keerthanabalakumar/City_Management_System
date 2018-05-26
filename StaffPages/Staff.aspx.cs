using EncryptionLib;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.XPath;

public partial class StaffPages_Librarian_Librarian : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["role"] != null)
        {
            String sessionStr = Session["role"].ToString();
            if (sessionStr.Equals("staff"))
            {
               
            }
        }
        else
        {
            Response.Redirect("~/Login.aspx?ReturnURL=StaffPages/Staff.aspx");
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
        Server.Transfer("~/Default.aspx");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        CombinedService.Service1Client myClient = new CombinedService.Service1Client();
        try
        {
            lb1location.Text = txtInput.Text;
            String result = myClient.geoCoding(lb1location.Text);
            lb1location.Text = result;
        }
        catch (Exception ec) { lb1location.Text = ec.Message.ToString(); }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {
            String username = TextBox1.Text;
            String password = TextBox2.Text;
            string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\Staff.xml");
            XmlDocument reader = new XmlDocument();
            reader.Load(fLocation);
            XmlElement logindetails = reader.CreateElement("logindetails");
            XmlElement usernameXml = reader.CreateElement("username");
            XmlElement passwordXml = reader.CreateElement("password");
            usernameXml.InnerText = username;
            passwordXml.InnerText = Class1.getHash(password);
            logindetails.AppendChild(usernameXml);
            logindetails.AppendChild(passwordXml);
            reader.DocumentElement.AppendChild(logindetails);
            reader.Save(fLocation);
            Label2.Text = "Successfully added a staff!!";
        }
        finally
        {
        }
    }


}