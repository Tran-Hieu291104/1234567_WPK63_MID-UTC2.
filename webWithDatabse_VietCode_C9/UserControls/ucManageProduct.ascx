<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageProduct.ascx.cs" Inherits="webWithDatabse_VietCode_C9.UserControls.ucManageProduct" %>
<table style="width: 100%">
    <tr>
        <td>Product name:</td>
        <td>
            <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>

    <tr>
        <td>Price:</td>
        <td>
            <asp:TextBox ID="TextBoxPrice" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>

    <tr>
        <td>Category:</td>
        <td>
            <asp:DropDownList ID="DropDownListCategory" runat="server"></asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>

    <tr>
        <td>Description:</td>
        <td>
            <asp:TextBox ID="TextBoxDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>

    <tr>
        <td>Picture:</td>
        <td>
            <asp:FileUpload ID="FileUploadPicture" runat="server" />
        </td>
        <td>&nbsp;</td>
    </tr>

    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="ButtonAddNew" runat="server" Text="Add new" OnClick="ButtonAddNew_Click" />
        </td>

    </tr>
</table>

<hr />

<asp:GridView ID="GridViewProducts" runat="server" AutoGenerateColumns="False" Width="296px" OnPageIndexChanging="GridViewProducts_PageIndexChanging" OnRowCommand="GridViewProducts_RowCommand">
    <Columns>
        <asp:TemplateField HeaderText="No.">
            <ItemTemplate>
                <%# Container.DataItemIndex+1 %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Picture">
            <ItemTemplate>
                <asp:Image ID="imageProduct" runat="server" ImageUrl='<%# "~/images/Products/" + Eval("FilePath") %>' Width="100px" Height="100px" />

            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Name">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Name") %>' Target="_blank" NavigateUrl='<%# "~/Details.aspx?id=" + Eval("id") %>'>HyperLink</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="DeleteButton" runat="server" Text="Delete" OnClientClick="return confirm('Do you really want to delete this product?');" CommandName="DeleteProduct" CommandArgument='<%# Eval("id") %>' />
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="EditProduct" CommandArgument='<%# Eval("id") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<hr />

<asp:Panel ID="pnlEditProduct" runat="server">
    <asp:Label ID="lblProductId" runat="server" Text="" Visible="false"></asp:Label>
    <asp:TextBox ID="txtEditProductName" runat="server" placeholder="Product Name"></asp:TextBox>
    <asp:TextBox ID="txtEditProductPrice" runat="server" placeholder="Product Price"></asp:TextBox>
    <asp:TextBox ID="txtEditProductDescription" runat="server" placeholder="Product Description"></asp:TextBox>
    <asp:DropDownList ID="dpEditProductCategory" runat="server"></asp:DropDownList>
    <asp:FileUpload ID="fulEditImageProduct" runat="server" />
    <asp:Button ID="btnUpdateProduct" runat="server" Text="Update" OnClick="btnUpdateProduct_Click" />
    <asp:Button ID="btnCancelUpdate" runat="server" Text="Cancel" OnClick="btnCancelUpdate_Click" />
</asp:Panel>
