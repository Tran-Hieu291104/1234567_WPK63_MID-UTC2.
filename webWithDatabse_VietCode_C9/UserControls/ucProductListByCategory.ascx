<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucProductListByCategory.ascx.cs" Inherits="webWithDatabse_VietCode_C9.UserControls.ucProductListByCategory" %>
<asp:ListView ID="ListView1" runat="server" DataSourceID="ProductListByCategoryEntityDataSource" DataKeyNames="id">
    <ItemTemplate>
        <div class="product_box">
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' CssClass="product_name"></asp:Label><br />
            <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" ImageUrl='<%# "~/images/Products/" + Eval("FilePath") %>' /><br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>' CssClass="product_price"></asp:Label><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Details.aspx?id=" + Eval("id") %>' CssClass="product_view">View Details</asp:HyperLink>
        </div>
    </ItemTemplate>

    <LayoutTemplate>
        <div style="" id="itemPlaceholderContainer" runat="server">
            <span runat="server" id="itemPlaceholder" />
        </div>

        <div class="pager">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="true" ShowNextPageButton="false" ShowPreviousPageButton="false" />
                    <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="true" ShowNextPageButton="false" ShowPreviousPageButton="false" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>

</asp:ListView>

<asp:EntityDataSource ID="ProductListByCategoryEntityDataSource" runat="server" ConnectionString="name=newMyShopModelEntities" DefaultContainerName="newMyShopModelEntities" EnableFlattening="False" EntitySetName="Products" EntityTypeFilter="Product" Include="Category" Where="it.Category.id = @Category_Id">
    <WhereParameters>
        <asp:QueryStringParameter Name="Category_Id" QueryStringField="id" Type="Int32" />
    </WhereParameters>
</asp:EntityDataSource>
