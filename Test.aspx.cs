using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EncryptionLib;
using System.IO;
using System.Xml;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click1(object sender, EventArgs e)
    {
        lb1stopwords.Text = Class1.getHash(TextBox1.Text);
    }

    protected void Submit(object sender, EventArgs e)
    {
        Label1.Text = Class1.matchPassword(TextBox2.Text, TextBox3.Text).ToString();
    }

    protected void add(object sender, EventArgs e)
    {
         xmlContent.InnerText= addmember(TextBox4.Text, TextBox5.Text);
    }
    public String addmember(String username, String password)
    {
        string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\tryitcheck.xml");
        XmlDocument reader = new XmlDocument();
        reader.Load(fLocation);
        XmlElement logindetails = reader.CreateElement("logindetails");
        XmlElement usernameXml = reader.CreateElement("username");
        XmlElement passwordXml = reader.CreateElement("password");
        usernameXml.InnerText = username;
        passwordXml.InnerText = password;
        logindetails.AppendChild(usernameXml);
        logindetails.AppendChild(passwordXml);
        reader.DocumentElement.AppendChild(logindetails);
        reader.Save(fLocation);
        return (reader.InnerXml).ToString();
    }
}