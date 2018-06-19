<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HiddenField.aspx.cs" Inherits="DropDownList.HiddenField" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <br />
            <table>
                <tr>
                    <td>Name</td>
                    <td><asp:TextBox Id="txtName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><asp:TextBox Id="txtGender" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><asp:TextBox Id="txtDeptName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" Text="Update" runat="server" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Button ID="buttton2" Text="Load" runat="server" Height="26px" OnClick="buttton2_Click"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
