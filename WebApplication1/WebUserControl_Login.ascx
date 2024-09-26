<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl_Login.ascx.cs" Inherits="WebApplication1.WebUserControl_Login" %>
<p>
    UserName:
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    <br />
    PassWord:
    <asp:TextBox ID="txtPassWord" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnLogIn" runat="server" Text="Log in" />
</p>