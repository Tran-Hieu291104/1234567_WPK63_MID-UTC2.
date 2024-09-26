<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManageCategory.ascx.cs" Inherits="webWithDatabse_VietCode_C9.UserControls.ucManageCategory" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ProductListEntityDataSource" AllowPaging="True" AllowSorting="True">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        
    </Columns>
</asp:GridView>
<asp:EntityDataSource ID="ProductListEntityDataSource" runat="server" ConnectionString="name=newMyShopModelEntities" DefaultContainerName="newMyShopModelEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Categories" EntityTypeFilter="Category" OnUpdated="ProductListEntityDataSource_Updated"></asp:EntityDataSource>

<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="ProductListEntityDataSource" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
    <AlternatingRowStyle BackColor="#F7F7F7" />
    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    <Fields>
        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
       
        <asp:CommandField ShowInsertButton="True" />
       
    </Fields>
    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
</asp:DetailsView>
<asp:EntityDataSource ID="CategoryEntityDataSource" runat="server" ConnectionString="name=newMyShopModelEntities" DefaultContainerName="newMyShopModelEntities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Categories">
    <WhereParameters>
        <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" />
    </WhereParameters>
</asp:EntityDataSource>
