<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="webLayout_C7_MasterPage_Theme_Skin_Sitemap.News" Theme="Red"%>
  <%-- Thêm chỉ thị đến trang Master --%>
<%@MasterType VirtualPath="~/DefaultMasterPage.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolderContent" runat="server">
    <p>
        News
    </p>
    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
</asp:Content>
