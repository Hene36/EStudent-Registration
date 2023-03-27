<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Student Registration System :: Login" StylesheetTheme="SkinFile" Theme="SkinFile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    	<table border="0" width="400" cellspacing="1" style="border-collapse: collapse; border-style: solid; border-width: 1px; padding-left: 4px; padding-right: 4px; padding-top: 1px; padding-bottom: 1px" id="table1" align="center">
		<tr>
			<td style="height: 20px" class="td_tabcap" valign ="middle" >Login</td>
		</tr>
		<tr>
			<td>
			<table border="0" width="394" cellspacing ="3" cellpadding="3" style="border-collapse: collapse" id="table2">
                <tr>
                    <td width="18">
                    </td>
                    <td style="width: 115px">
                        &nbsp;</td>
                    <td width="193">
                    </td>

                </tr>
				<tr>
					<td width="18">&nbsp;</td>
					<td style="width: 115px">User Name</td>
					<td width="193">&nbsp;<asp:TextBox ID="TxtUserName" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUserName"
                            ErrorMessage="**"></asp:RequiredFieldValidator></td>
				</tr>
				<tr>
					<td width="18">&nbsp;</td>
					<td style="width: 115px">Password</td>
					<td width="193">&nbsp;<asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPassword"
                            ErrorMessage="**"></asp:RequiredFieldValidator></td>
				</tr>
				<tr>
					<td width="18">&nbsp;</td>
					<td style="width: 115px">Login As</td>
					<td width="193">&nbsp;<asp:RadioButton ID="RdStudent" runat="server" GroupName="Login" Text="Student" Checked="True" />&nbsp;<asp:RadioButton
                            ID="RdEmployee" runat="server" GroupName="Login" Text="Employee" /></td>
				</tr>
				<tr>
					<td width="18">&nbsp;</td>
					<td style="width: 115px">&nbsp;</td>
					<td width="193">&nbsp;<asp:Button ID="CmdLogin" runat="server"  Text="Login" OnClick="CmdLogin_Click"   />&nbsp;
                        <asp:Button ID="CmdReset" runat="server" Text="Reset" OnClick="CmdReset_Click" /></td>
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

