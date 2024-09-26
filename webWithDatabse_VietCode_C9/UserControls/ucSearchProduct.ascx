<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucSearchProduct.ascx.cs" Inherits="webWithDatabse_VietCode_C9.UserControls.ucSearchProduct" %>
Name: <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
<p>&nbsp;</p>
Price: <asp:TextBox ID="txtLowerPrice" runat="server"></asp:TextBox>
-
<asp:TextBox ID="txtUpperPrice" runat="server"></asp:TextBox>
<asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
<p>&nbsp;</p>
<p>Search Result</p>

<asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SearchEntityDataSource" OnDataBound="ListView1_DataBound">
    <AlternatingItemTemplate>
        <tr style="">
            <td>
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            </td>
            <td>
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            </td>
            <td>
                <asp:Label ID="FilePathLabel" runat="server" Text='<%# Eval("FilePath") %>' />
            </td>
            <td>
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            </td>
            <td>
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            </td>
            <td>
                <asp:Label ID="Category_idLabel" runat="server" Text='<%# Eval("Category_id") %>' />
            </td>
            <td>
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td>
                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            </td>
            <td>
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            </td>
            <td>
                <asp:TextBox ID="FilePathTextBox" runat="server" Text='<%# Bind("FilePath") %>' />
            </td>
            <td>
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            </td>
            <td>
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            </td>
            <td>
                <asp:TextBox ID="Category_idTextBox" runat="server" Text='<%# Bind("Category_id") %>' />
            </td>
            <td>
                <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="">
            <tr>
                <td>No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
            <td>
                <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
            </td>
            <td>
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            </td>
            <td>
                <asp:TextBox ID="FilePathTextBox" runat="server" Text='<%# Bind("FilePath") %>' />
            </td>
            <td>
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            </td>
            <td>
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            </td>
            <td>
                <asp:TextBox ID="Category_idTextBox" runat="server" Text='<%# Bind("Category_id") %>' />
            </td>
            <td>
                <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' CssClass="product_name"></asp:Label><br />
        <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" ImageUrl='<%# "~/images/Products/" + Eval("FilePath") %>'/><br />
        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>' CssClass="product_price"></asp:Label><br />
        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/Details.aspx?id=" + Eval("id") %>' runat="server" CssClass="product_view">View Details</asp:HyperLink>
    </ItemTemplate>
    <LayoutTemplate>
        <div id="itemPlaceholderContainer" runat="server" style="">
            <span runat="server" id="itemPlaceholder" />
        </div>

        <div style="">
            <asp:DataPager ID="DataPager1" runat="server" PageSize="4">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
</asp:ListView>
<asp:EntityDataSource ID="SearchEntityDataSource" runat="server" ConnectionString="name=newMyShopModelEntities" DefaultContainerName="newMyShopModelEntities" EnableFlattening="False" EntitySetName="Products" EntityTypeFilter="Product" Where="it.Name like '%'+@Name+'%' and it.Price >= @LowerPrice and it.Price <= @UpperPrice">
    <WhereParameters>
        <asp:ControlParameter ControlID="txtName" PropertyName="Text" Name="Name" Type="String" />
        <asp:ControlParameter ControlID="txtLowerPrice" Name="LowerPrice" PropertyName="Text" Type="Decimal" />
        <asp:ControlParameter ControlID="txtUpperPrice" Name="UpperPrice" PropertyName="Text" Type="Decimal" />
    </WhereParameters>
</asp:EntityDataSource>
