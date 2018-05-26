<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Imageverifier.aspx.cs" Inherits="Imageverifier" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Please verify the following image.
    </div>
    <div></div>
        <asp:Image ID="Image1" runat="server" />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="146px"></asp:TextBox>
&nbsp;<p>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Validate" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Button ID="reload_img" runat="server" OnClick="reload_img_Click" Text="Get a different image" />
        </p>

    </form>
</body>
</html>
