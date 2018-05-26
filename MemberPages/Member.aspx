<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="MemberPages_Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Member Page</h2></div>
        <div>
         
           <h2><asp:Label ID="Label1" runat="server" Font-Italic="True"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" />
&nbsp;&nbsp;
               <asp:Button ID="signOut" runat="server" Text="Sign Out" OnClick="signOut_Click" />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2> 
         
        </div>
        
<h2>Word Filter Service</h2>
    <p> Description: Analyze a string of words and filter out the stop words and any words that are not meaningful to be counted at the top words in search.</p>
    <p>Method Name:</p>
    <p>1. WorldFilter - takes the input string and returns another string with the stop words removed.</p>
    <p>Please enter your string:
        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
        &nbsp;<asp:Button ID="Button2" runat="server" OnClick="btnSubmit_Click1" Text="Submit" />
    </p>
    <p>The string after removing stop words:
        <asp:Label ID="lb1stopwords" runat="server"></asp:Label>
    </p>

    <h2>Stemming Service</h2>
    <p> Description: Analyze a string containing a word or multiple words and replace each of the derived words to their stem or root word.</p>
    <p>Method used: </p>
    <p> stemming - takes a word / string as input and returns a word / string containing only the root words</p>
    <p>Please enter the word / string:
        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
        &nbsp;<asp:Button ID="Button3" runat="server" OnClick="btnSubmit_Click2" Text="Submit" />
    </p>
    <p>The word / string after stemming:
        <asp:Label ID="lb1stem" runat="server"></asp:Label>
    </p>
    </form>
</body>
</html>
