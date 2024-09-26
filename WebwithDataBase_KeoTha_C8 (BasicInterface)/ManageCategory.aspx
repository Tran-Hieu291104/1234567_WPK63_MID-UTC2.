<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="ManageCategory.aspx.cs" Inherits="WebLayout_C7_.ManageCategory" %>


<%@ Register src="UserControls/ucManageCategory.ascx" tagname="ucManageCategory" tagprefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolderContent" runat="server">
    <uc1:ucManageCategory ID="ucManageCategory1" runat="server" />
</asp:Content>
