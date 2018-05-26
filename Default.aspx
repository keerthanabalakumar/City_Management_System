<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Homepage</h2>
    <p>This is the homepage of the application. There is a public page which is the Service Directory and lists the available services implemented by me. The application consists of member options and staff options. The member has sign up (new user), sign in (existing user) and view member page. This member page is only available if the member is signed in. The staff options are sign in ( existing user) and view staff page. The login credentials for staff are : username - TA, password - Cse445ta!</p>
    <p>This staff has the administrator account and can add new staff members which gets updated in the Staff.xml file.</p>
    <p>&nbsp;</p>
        <h3>Public Page:</h3>
        <p>1. View Public Page:
    <asp:Button ID="Button5" runat="server" OnClick="Publicpage" Text="Public Page" /></p>
    <h3>For Members:</h3>
    <p>1. Pre existing user sign in:
<asp:Button ID="btnSubmit" runat="server" OnClick="Signinmember" Text="Sign in" />
    </p>
        <p>2. New user sign up:
<asp:Button ID="Button1" runat="server" OnClick="Signup" Text="Sign up" />
    </p>
        <p>3. Go to member page:
<asp:Button ID="Button2" runat="server" OnClick="ViewMember" Text="Member Page" />
    </p>
<h3>For Staffs:</h3>
    <p>1. Sign in for staff:
<asp:Button ID="Button3" runat="server" OnClick="Signinstaff" Text="Sign in" />
    </p>
        <p>2. Go to staff page:
<asp:Button ID="Button4" runat="server" OnClick="ViewStaff" Text="Staff Page" />
    </p>
    <p>
        <asp:Label ID="lb1date" runat="server" Text="Label"></asp:Label>
    </p>
    <h3>Testing purposes:</h3>
    <p><asp:Button ID="Button6" runat="server" OnClick="test" Text="Test" /></p>
</asp:Content>