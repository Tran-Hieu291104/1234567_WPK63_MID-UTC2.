<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCategoriesList.ascx.cs" Inherits="webWithDatabse_VietCode_C9.UserControls.ucCategoriesList" %>
<asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="DataListEntityDataSource">
    <ItemTemplate>
        <div>

            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Name") + "(" + Eval("Products.Count") + ")" %>' NavigateUrl='<%# "~/Category.aspx?id=" + Eval("id") %>'></asp:HyperLink>

        </div>
    </ItemTemplate>
</asp:DataList>
<asp:EntityDataSource ID="DataListEntityDataSource" runat="server" ConnectionString="name=newMyShopModelEntities" DefaultContainerName="newMyShopModelEntities" EnableFlattening="False" EntitySetName="Categories" EntityTypeFilter="Category" Include="Products"></asp:EntityDataSource>
