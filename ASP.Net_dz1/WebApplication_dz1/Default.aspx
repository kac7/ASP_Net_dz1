﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication_dz1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    
    <form id="form1" runat="server" class="formReg">
        <div class="form_content">
            <h2>Registration</h2>
            <table>
                <tr>
                    <td><asp:Label ID="LabelLogin" runat="server" Text="Name"></asp:Label></td>
                    <td><asp:TextBox ID="Login" required runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="LabelPassword" runat="server" Text="Password"></asp:Label></td>
                    <td><asp:TextBox ID="Password" required runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="LabelRole" runat="server" Text="Role"></asp:Label></td>
                    <td><asp:ListBox ID="ListBoxRole" runat="server" Rows="1" CssClass="ListBoxRole">
                        <asp:ListItem>Super Admin</asp:ListItem>
                        <asp:ListItem>Administrator</asp:ListItem>
                        <asp:ListItem>Editor</asp:ListItem>
                        <asp:ListItem>Author</asp:ListItem>
                        <asp:ListItem>Subscriber</asp:ListItem>
                        </asp:ListBox></td>
                </tr>
            </table>
            <asp:Button ID="ButtonAdd" runat="server" Text="Registration" CssClass="btn btn-success" OnClick="ButtonAdd_Click" /><br />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="linkPadding">Existing accounts</asp:HyperLink>
            
        </div>
        
    </form>
</body>
</html>
