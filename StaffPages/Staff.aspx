<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="StaffPages_Librarian_Librarian" ValidateRequest ="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Staff Page</h2></div>
        <div>
         
           <h2><asp:Label ID="Label1" runat="server" Font-Italic="True"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" />
&nbsp;&nbsp;
               <asp:Button ID="signOut" runat="server" Text="Sign Out" OnClick="signOut_Click" />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>
            <h2>Add new staff:</h2>
            <p>username:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>password:
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </p>
            <h2>&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add new staff" />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2> 
         
        </div>

    <h2>Geocoding API Service (Elective)</h2>
    <p> Description: Analyze a string containing an address (For example: Address of the form 1216 E vista del cerro tempe) and return the latitude and longitude values.</p>
    <p>Method used: </p>
    <p> geoCoding - takes an address (string) as input and returns the latitude and longitude as (string). </p>
    <p>Please enter the address:
        <asp:TextBox ID="txtInput" runat="server" Width="200px"></asp:TextBox>
        &nbsp;<asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
    </p>
    <p>The location details are:
        <asp:Label ID="lb1location" runat="server"></asp:Label>
    </p>
    </form>
</body>
</html>
