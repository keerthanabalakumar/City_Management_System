<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Sign up Page:</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">User Name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="437px"></asp:TextBox>
                    <span class="auto-style3">*</span></td>
            </tr>
        
            <tr>
                <td class="auto-style2">Password:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="431px" TextMode="Password"></asp:TextBox>
                    <span class="auto-style3">*</span></td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="424px" TextMode="Password"></asp:TextBox>
                    <span class="auto-style3">*</span></td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="Signup" OnClick="Button1_Click" />
    </form>
</body>
</html>
