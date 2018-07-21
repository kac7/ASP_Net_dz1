<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="WebApplication_dz1.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="formReg">
        <div>
            <h2>Изменить</h2>
            <table>
                <tr>
                    <td><asp:Label ID="LabelLogin" runat="server" Text="Имя"></asp:Label></td>
                    <td><asp:TextBox ID="Login" required runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="LabelPassword" runat="server" Text="Пароль"></asp:Label></td>
                    <td><asp:TextBox ID="Password" required runat="server" ></asp:TextBox></td>
                </tr>
                 <tr>
                    <td><asp:Label ID="LabelRole" runat="server" Text="Роль"></asp:Label></td>
                    <td><asp:ListBox ID="ListBoxRole" runat="server" Rows="1" CssClass="ListBoxRole">
                        <asp:ListItem>Super Admin</asp:ListItem>
                        <asp:ListItem>Administrator</asp:ListItem>
                        <asp:ListItem>Editor</asp:ListItem>
                        <asp:ListItem>Author</asp:ListItem>
                        <asp:ListItem>Subscriber</asp:ListItem>
                        </asp:ListBox></td>
                </tr>
            </table>
            <asp:Button ID="Edit1" runat="server" Text="Изменить" CssClass="btn btn-success" OnClick="Edit_Click"/><br />
            <asp:Button ID="Cancel" runat="server" Text="Отменить" CssClass="btn btn-cancel" OnClick="Cancel_Click" /><br />
        </div>
    </form>
</body>
</html>
