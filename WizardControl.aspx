<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WizardControl.aspx.cs" Inherits="DropDownList.WizardControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick">
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1 Personal Details">
                          <table style="border:1px solid black">
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
                    </table>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2 Contact Details">
                            <table>
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
                    </table>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 3 Summary">
                          <table style="border:1px solid black">
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
                         
                    </table>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
    </form>
</body>
</html>
