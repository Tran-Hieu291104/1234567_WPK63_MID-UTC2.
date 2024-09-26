<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="WebLayout_C7_.Details" %>
<%@ Register src="UserControls/ucProductDetails.ascx" tagname="ucProductDetails" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolderContent" runat="server">
    <uc1:ucProductDetails ID="ucProductDetails1" runat="server" />
</asp:Content>
