<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompareValidation.aspx.cs" Inherits="DropDownList.CompareValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <b>Password</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    
                </tr>
                 <tr>
                    <td>
                        <b>Confirm Password</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="Both passwords r not same" ControlToCompare="TextBox1" ControlToValidate="TextBox2" 
                         Type="String" Operator="Equal" ></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Date Of  Application</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                         <asp:CompareValidator ID="CompareValidator2" runat="server" 
                        ErrorMessage="Date should be grater than 01/01/2018 " ValueToCompare="01/01/2018" ControlToValidate="TextBox3" 
                         Type="Date" Operator="GreaterThan" ></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Age</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator3" runat="server" 
                        ErrorMessage="Age should be number"  ControlToValidate="TextBox4" 
                         Type="Integer" Operator="DataTypeCheck" ></asp:CompareValidator>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
