<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkbox.aspx.cs" Inherits="DropDownList.Checkbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                <asp:ListItem Text="Diploma" Value="1"></asp:ListItem>
                <asp:ListItem Text="Gaduate" Value="1"></asp:ListItem>
                <asp:ListItem Text="Post Gaduate" Value="1"></asp:ListItem>
                <asp:ListItem Text="Doctrate" Value="1"></asp:ListItem>
            </asp:CheckBoxList>
            <br />
        </div>
        <asp:ListBox ID="ListBox1" runat="server" Height="97px" SelectionMode="Multiple" Width="162px"></asp:ListBox>
        <br />
        <br />
        <asp:Label ID="Label1" Font-Bold="true" runat="server" ></asp:Label>
        <br />
    </form>
</body>
</html>
