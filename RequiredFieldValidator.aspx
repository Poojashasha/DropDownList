<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequiredFieldValidator.aspx.cs" Inherits="DropDownList.RequiredFieldValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name:
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Name is required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            <br />
            Gender:
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Text="select Gender" Value="-1"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Select Gender" ControlToValidate="DropDownList1" InitialValue="-1"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
