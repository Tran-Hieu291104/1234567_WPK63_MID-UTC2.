<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucProductDetails.ascx.cs" Inherits="webWithDatabse_VietCode_C9.UserControls.ucProductDetails" %>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="EntityDataSource1">
    <ItemTemplate>
        <div class="product_detail_box">
            <div class="product_image">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("FilePath", "~/images/products/{0}") %>' />
            </div>
            <div>
                <br />
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Category.Name") %>'></asp:Label>&nbsp;
                <asp:Label ID="Label1" runat="server" CssClass="product_name" Text='<%# Eval("Name") %>'></asp:Label><br />
                <asp:Label ID="Label2" runat="server" CssClass="product_price" Text='<%# Eval("Price") %>'></asp:Label><br />
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Description") %>'></asp:Label><br />
            </div>
        </div>

    </ItemTemplate>
</asp:FormView>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=newMyShopModelEntities" DefaultContainerName="newMyShopModelEntities" EnableFlattening="False" EntitySetName="Products" EntityTypeFilter="Product" Include="Category" Where="it.Id = @Id ">
    <WhereParameters>
        <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
    </WhereParameters>
</asp:EntityDataSource>
