<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="webWithDatabse_VietCode_C9.ManageProduct" %>

<%@ Register Src="~/UserControls/ucManageProduct.ascx" TagPrefix="uc1" TagName="ucManageProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucManageProduct runat="server" id="ucManageProduct" />
</asp:Content>
