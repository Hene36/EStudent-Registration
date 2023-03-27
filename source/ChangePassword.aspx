<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" Title="Student Registration System :: Change Password" StylesheetTheme="SkinFile" Theme="SkinFile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <table id="table1" align="center" border="0" cellspacing="1" style="border-right: 1px solid;
        padding-right: 4px; border-top: 1px solid; padding-left: 4px; padding-bottom: 1px;
        border-left: 1px solid; padding-top: 1px; border-bottom: 1px solid; border-collapse: collapse"
        width="400">
        <tr>
            <td class="td_tabcap" style="height: 20px" valign="middle">
                Change Password</td>

        </tr>
        <tr>
            <td>
                <table id="table2" border="0" cellpadding="3" cellspacing="3" style="border-collapse: collapse"
                    width="394">
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            &nbsp;</td>
                        <td width="193">
                        </td>
                    </tr>
                    <tr>
                        <td width="18">
                            &nbsp;</td>
                        <td style="width: 115px">
                            Old Password</td>
                        <td width="193">
                            &nbsp;<asp:TextBox ID="TxtOldPassword" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtOldPassword"
                                ErrorMessage="**"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="color: #000000">
                        <td width="18">
                            &nbsp;</td>
                        <td style="width: 115px">
                            New
                            Password</td>
                        <td width="193">
                            &nbsp;<asp:TextBox ID="TxtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtNewPassword"
                                ErrorMessage="**"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="color: #000000">
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            Confirm Password</td>
                        <td width="193">
                            &nbsp;<asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtConfirmPassword"
                                ErrorMessage="**"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td width="18">
                            &nbsp;</td>
                        <td style="width: 115px">
                            &nbsp;</td>
                        <td width="193">
                            &nbsp;<asp:Button ID="CmdSubmit" runat="server"   Text="Submit" OnClick="CmdSubmit_Click" />&nbsp;
                            <asp:Button ID="CmdReset" runat="server" OnClick="CmdReset_Click" Text="Reset" /></td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            &nbsp;</td>
                        <td width="193">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

