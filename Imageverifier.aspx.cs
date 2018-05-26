using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Imageverifier : System.Web.UI.Page
{
    ServiceReference1.ServiceClient client = new ServiceReference1.ServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string verifierstr = client.GetVerifierString("6");
            Session["verifyStr"] = verifierstr;
            Stream istream = client.GetImage((string)Session["verifyStr"]);
            string iPath = Server.MapPath(@"ImageVerifiers\imgverify.jpg");
            System.Drawing.Image img = System.Drawing.Image.FromStream(istream);
            img.Save(iPath, System.Drawing.Imaging.ImageFormat.Jpeg);
            string imgPath = "~/ImageVerifiers/imgverify.jpg";
            Image1.ImageUrl = imgPath;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["verifyStr"].Equals(TextBox1.Text))
        {

            Response.Redirect("SignUp.aspx");

        }
        else
        {
            Label1.Text = "Entered input does not match the given code!";
            Session["verifyStr"] = null;

        }
    }


    protected void reload_img_Click(object sender, EventArgs e)
    {
        string verifierstr = client.GetVerifierString("6");
        Session["verifyStr"] = verifierstr;
        Stream istream = client.GetImage((string)Session["verifyStr"]);
        string iPath = Server.MapPath(@"ImageVerifiers\imgverify.jpg");
        System.Drawing.Image img = System.Drawing.Image.FromStream(istream);
        img.Save(iPath, System.Drawing.Imaging.ImageFormat.Jpeg);
        string imgPath = "~/ImageVerifiers/imgverify.jpg";
        Image1.ImageUrl = imgPath;
    }
}