<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanelControl.aspx.cs" Inherits="DropDownList.PanelControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem runat="server" Text="Select Value" Value="-1"></asp:ListItem>
                <asp:ListItem runat="server" Text="Admin" Value="Admin"></asp:ListItem>
                <asp:ListItem runat="server" Text="Non Admin" Value="NonAdmin"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <table>
                <tr>
                    <td colspan="2">
                        <h1>Kirron Logged as Admin</h1>
                    </td>
                </tr>
                <tr>
                    <td> Name</td>
                    <td><asp:TextBox Text="Tom" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td> Last Name</td>
                    <td><asp:TextBox Text="JACK" runat="server"></asp:TextBox></td>
                </tr>
            </table>
        </asp:Panel>
         <asp:Panel ID="Panel2" runat="server">
              <table>
                <tr>
                    <td colspan="2">
                        <h1>Hello Pooja</h1>
                    </td>
                </tr>
                <tr>
                    <td> Name</td>
                    <td><asp:TextBox Text="Pooja" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td> Last Name</td>
                    <td><asp:TextBox Text="Kirron" runat="server"></asp:TextBox></td>
                </tr>
            </table>
         </asp:Panel>
         
    </form>
</body>
</html>
