<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ASPNETControl.aspx.cs" Inherits="WebApplication1.ASPNETControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" defaultbutton="btnDangKi" defaultfocus="txtTenDangNhap">
        <div>
            <asp:Panel ID="PanelCopy" runat="server" DefaultButton="btnCopy">
                <asp:TextBox ID="txtString1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validateString1" runat="server" ErrorMessage="Textbox này không được rỗng" ControlToValidate="txtString1" ForeColor="Red" ValidationGroup="Copy">*</asp:RequiredFieldValidator>
                <asp:Button ID="btnCopy" runat="server" Text="Button" OnClick="btnCopy_Click" ValidationGroup="Copy" />
                <br />
                <asp:TextBox ID="txtString2" runat="server"></asp:TextBox>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" />
            </asp:Panel>
        </div>
        <table style="width: 100%;">
            <tr>
                <td colspan="2">Form đăng kí thành viên</td>
               
            </tr>
            <tr>
                <td class="auto-style2">Tên đăng nhập</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtTenDangNhap" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDangNhap" ErrorMessage="Tên đăng nhập không được bỏ trống" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Mật khẩu</td>
                <td>
                    <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class="auto-style1">Xác nhận mật khẩu</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtXacNhanMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Hai mật khẩu phải giống nhau" ControlToValidate="txtXacNhanMatKhau"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Địa chỉ</td>
                <td>
                    <asp:TextBox ID="txtDiaChi" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Địa chỉ email không hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>MSSV</td>
                <td>
                    <asp:TextBox ID="txtMssv" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMssv" ErrorMessage="MSSV là 1 chuỗi có 7 chữ số"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Khóa</td>
                <td>
                    <asp:TextBox ID="txtKhoa" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtKhoa" ErrorMessage="Khóa phải từ 1996 đến 2022" MaximumValue="2022" MinimumValue="1996" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>Chuyên ngành</td>
                <td>
                    <asp:DropDownList ID="cmbChuyenNganh" runat="server">
                        <asp:ListItem>Khoa học công nghệ</asp:ListItem>
                        <asp:ListItem>Hệ thống thông tin</asp:ListItem>
                        <asp:ListItem>Khoa học máy tính</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnDangKi" runat="server" Text="Đăng kí" OnClick="btnDangKi_Click" />
                </td>
            </tr>
        </table>
        <asp:PlaceHolder ID="PlaceHolderUserControl" runat="server"></asp:PlaceHolder>
    </form>
</body>
</html>
