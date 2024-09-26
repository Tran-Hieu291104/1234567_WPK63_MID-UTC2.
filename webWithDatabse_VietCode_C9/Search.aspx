<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="webWithDatabse_VietCode_C9.Search" %>

<%@ Register Src="~/UserControls/ucSearchProduct.ascx" TagPrefix="uc1" TagName="ucSearchProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucSearchProduct runat="server" ID="ucSearchProduct" />
</asp:Content>
