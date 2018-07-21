<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TebleUsers.aspx.cs" Inherits="WebApplication_dz1.TebleUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style.css" rel="stylesheet" />
</head>

<body>
    <asp:HyperLink ID="Return" runat="server" CssClass="linkPadding">Return to the registration form</asp:HyperLink>
    <form id="form1" runat="server">
        <div>
            <h2 class="formH2">Registered users</h2>
            <asp:Table ID="Table1" runat="server" CssClass="TableUsers">
                <asp:TableRow CssClass="th">
                    <asp:TableCell>Id</asp:TableCell>
                    <asp:TableCell>Name</asp:TableCell>
                    <asp:TableCell>Password</asp:TableCell>
                    <asp:TableCell>Role</asp:TableCell>
                    <asp:TableCell>Changes</asp:TableCell>
                    <asp:TableCell>Delete</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
    
</body>
</html>
