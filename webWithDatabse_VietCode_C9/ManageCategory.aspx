﻿<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="ManageCategory.aspx.cs" Inherits="webWithDatabse_VietCode_C9.ManageCategory" %>

<%@ Register Src="~/UserControls/ucManageCategory.ascx" TagPrefix="uc1" TagName="ucManageCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucManageCategory runat="server" id="ucManageCategory" />
</asp:Content>
