<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WizardControlTemplate.aspx.cs" Inherits="DropDownList.WizardControlTemplate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0">
                <StartNavigationTemplate>
                    <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" OnClientClick="return confirm('Are sure?')"/>
                </StartNavigationTemplate>
                <StepNavigationTemplate>
                    <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                    <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next" />
                </StepNavigationTemplate>
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                     <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 3">
                         <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                     </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
    </form>
</body>
</html>
