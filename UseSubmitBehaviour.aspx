<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UseSubmitBehaviour.aspx.cs" Inherits="DropDownList.UseSubmitBehaviour" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Clear" OnClick="Button1_Click" UseSubmitBehavior="False" />
            <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="You enttered: "></asp:Label>
        </div>
    </form>
</body>
</html>
