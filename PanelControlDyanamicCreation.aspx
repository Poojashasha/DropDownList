<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanelControlDyanamicCreation.aspx.cs" Inherits="DropDownList.PanelControlDyanamicCreation" %>

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
                        <b>Control type</b>
                    </td>
                    <td>
                        <asp:CheckBoxList ID="cblBoxlistControlType" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Text="Label" Value="Label" runat="server"></asp:ListItem>
                            <asp:ListItem Text="Text Box" Value="TextBox" runat="server"></asp:ListItem>
                            <asp:ListItem Text="Button" Value="Button" runat="server"></asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td>
                        How Many Labels
                    </td>
                    <td>
                        <asp:TextBox ID="txtLabelsControls" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        How Many TextBox
                    </td>
                    <td>
                        <asp:TextBox ID="txtTextBoxControls" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        How Many Button
                    </td>
                    <td>
                        <asp:TextBox ID="txtButtonsControls" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnGenerateControl" runat="server" Text="Generate Controls" OnClick="btnGenerateControl_Click" />
                    </td>
                </tr>
               
                
                <tr>
                     <td colspan="8">
                         <h3>Label Controls</h3>
                    </td>
                </tr>
                <tr>
                    <td colspan="8">
                        <asp:Panel ID="PnlLabel" runat="server"></asp:Panel>
                    </td>
                </tr>
                <tr>
                     <td colspan="8">
                         <h3>TextBox Controls</h3>
                    </td>
                </tr>
                <tr>
                    <td colspan="8">
                        <asp:Panel ID="PnlTextBox" runat="server"></asp:Panel>
                    </td>
                </tr>
                <tr>
                     <td colspan="8">
                         <h3>Button Controls</h3>
                    </td>
                </tr>
                <tr>
                    <td colspan="8">
                        <asp:Panel ID="PnlButton" runat="server"></asp:Panel>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
