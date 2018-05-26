<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h2>GUI for testing the implementation:</h2>
    <p>Hashing DLL</p>
    <p> Description: This page checks the DLL password hash and xml modification functions.</p>
    <p>Please enter your password to be hashed:
        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
        &nbsp;<asp:Button ID="Button2" runat="server" OnClick="btnSubmit_Click1" Text="Submit" />
    </p>
    <p>The hashed password is:
        <asp:Label ID="lb1stopwords" runat="server"></asp:Label>
    </p>
    <p>Password check:</p>
    <p>Please enter your password again:
        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
        &nbsp;</p>
       <p>Please enter your hashed password from above:
        <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
        &nbsp;</p>
    <asp:Button ID="Button1" runat="server" OnClick="Submit" Text="Verify" />

        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <p>XML modification </p>
        <p>Please enter your username:
        <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
        &nbsp;</p>
        <p>Please enter your password:
        <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
        &nbsp;<asp:Button ID="Button3" runat="server" OnClick="add" Text="Add member" /></p>
        <p>Member.xml file:</p>
            <p id="xmlContent" runat="server"
></p>
    </form>
</body>
</html>
