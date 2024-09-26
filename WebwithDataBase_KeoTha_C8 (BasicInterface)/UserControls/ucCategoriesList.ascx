<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCategoriesList.ascx.cs" Inherits="WebLayout_C7_.UserControls.ucCategoriesList" %>
<asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="CategoryListEntityDataSource">
    <ItemTemplate>
       <div>
           <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Name") + "("+ Eval("Products.Count")+")" %>' NavigateUrl='<%# "~/Category.aspx?id=" + Eval("id")%>'>HyperLink</asp:HyperLink>
       </div>
    </ItemTemplate>
</asp:DataList>

<asp:EntityDataSource ID="CategoryListEntityDataSource" runat="server" ConnectionString="name=myShopEntities" DefaultContainerName="myShopEntities" EnableFlattening="False" EntitySetName="Categories" EntityTypeFilter="Category" Include="Products">

</asp:EntityDataSource>

<a href="../obj/">../obj/</a>