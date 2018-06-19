<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultiView.aspx.cs" Inherits="DropDownList.MultiView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <table style="border:1px solid black">
                        <tr>
                            <td colspan="2">
                                <h2>Step1 --Personal Details</h2>
                            </td>
                        </tr>
                        <tr>
                            <td>First Name</td>
                            <td>
                            <asp:TextBox id="txtFirstName" runat="server"></asp:TextBox>
                                </td>
                        </tr>
                        <tr>
                            <td>LastName</td>
                            <td>
                            <asp:TextBox id="txtLastName" runat="server"></asp:TextBox>
                            </td>

                        </tr>
                        <tr>
                            <td>Gender</td>
                            <td>
                                <asp:DropDownList id="ddlGender" runat="server">
                                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                     <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align:right">
                                <asp:Button id="btnGoToSttep2" text="Step 2 >>" runat="server" onclick="btnGoToStep2_click"/>
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <table>
                        <tr>
                            <td colspan="2">
                                <h2>Step 2 -Contact Details</h2>
                            </td>
                        </tr>
                        <tr>
                            <td>Email Address</td>
                            <td>
                                <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>Mobile Number</td>
                            <td>
                                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                               <asp:Button runat="server" ID="btnGoToStep1"  OnClick="btnGoToStep1_click" Text=" << step 1"/>
                            </td>
                            <td style="text-align:right">
                                 <asp:Button runat="server" ID="btnGoToStep3"  OnClick="btnGoToStep3_click" Text="Step 3 >>"/>
                                
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <table style="border:1px solid black">
                        <tr>
                            <td colspan="2">
                                <h2>Stepp 3 Summary</h2>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"> 
                                <h3> Personal Details</h3>
                            </td>
                        </tr>
                        <tr>
                            <td>First Name : </td>
                            <td>
                            <asp:Label ID="lblFirstName" runat="server"> </asp:Label>
                                </td>
                        </tr>
                        <tr>
                            <td>Last Name : </td>
                             <td>
                            <asp:Label ID="lblLastName" runat="server"> </asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Gender : </td>
                             <td>
                            <asp:Label ID="lblGender" runat="server"> </asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>emaail Address : </td>
                             <td>
                            <asp:Label ID="lblEmail" runat="server"> </asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Mobile : </td>
                            <td>
                            <asp:Label ID="lblMobile" runat="server"> </asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Button runat="server" ID="Button1"  OnClick="button1_click" Text="<< Step 2"/>
                            </td>
                            <td style="text-align:right">
                                <asp:Button runat="server" ID="Button2"  OnClick="button2_click" Text="submit"/>
                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
    
</body>
</html>
