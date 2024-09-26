<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="WebLayout_C7_.Search" %>
<%@ Register src="UserControls/ucSearchProduct.ascx" tagname="ucSearchProduct" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolderContent" runat="server">
    <uc1:ucSearchProduct ID="ucSearchProduct1" runat="server" />
</asp:Content>
