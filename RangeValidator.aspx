<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RangeValidator.aspx.cs" Inherits="DropDownList.RangeValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Age:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ErrorMessage="Range must be between 10 and 100" ControlToValidate="TextBox1" 
                MinimumValue="10" MaximumValue="100" Type="Integer"></asp:RangeValidator>
            <br />
            Date Available:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                ErrorMessage="Range must be between 01/01/2018 and 10/12/2018" ControlToValidate="TextBox2" 
                MinimumValue="01/01/2018" MaximumValue="10/12/2018" Type="Date"></asp:RangeValidator>
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
    </form>
</body>
</html>
