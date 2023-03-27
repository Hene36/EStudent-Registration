<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registartion" Title="Student Registration System :: New Registration" StylesheetTheme="SkinFile" Theme="SkinFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />

    <table id="table1" align="center" border="0" cellspacing="1" style="border-right: 1px solid;
        padding-right: 4px; border-top: 1px solid; padding-left: 4px; padding-bottom: 1px;
        border-left: 1px solid; padding-top: 1px; border-bottom: 1px solid; border-collapse: collapse"
        width="600">
        <tr>
            <td class="td_tabcap" style="height: 20px" valign="middle">
                New Student Registration</td>
        </tr>
        <tr>
            <td>

                <table id="table2" border="0" cellpadding="3" cellspacing="3" style="border-collapse: collapse"
                    width="594">
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
                            Student Name</td>
                        <td width="193">
                            &nbsp;<asp:TextBox ID="TxtStudentName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtStudentName"
                                ErrorMessage="**"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="color: #000000">
                        <td width="18">
                            &nbsp;</td>
                        <td style="width: 115px">
                            Course Name</td>
                        <td width="193">
                            &nbsp;<asp:DropDownList ID="DdlCourseName" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DdlCourseName"
                                ErrorMessage="**" InitialValue="--Select--"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="color: #000000">
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            Gender</td>
                        <td width="193">
                            <asp:RadioButton ID="RdMale" runat="server" Checked="True" GroupName="Gender" Text="Male" />&nbsp;<asp:RadioButton
                                ID="RdFemale" runat="server" GroupName="Gender" Text="Female" /></td>
                    </tr>
                    <tr style="color: #000000">
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            Date of Birth</td>
                        <td width="193">
                            &nbsp;<asp:TextBox ID="TxtDOB" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtDOB"
                                ErrorMessage="**"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            Address</td>
                        <td width="193">
                            &nbsp;<asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtAddress"
                                ErrorMessage="**"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            City</td>
                        <td width="193">
                            &nbsp;<asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtCity"
                                ErrorMessage="**"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            Country</td>
                        <td width="193">
                            &nbsp;<asp:DropDownList ID="DdlCountry" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DdlCountry"
                                ErrorMessage="**" InitialValue="--Select--"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            Postal Code</td>
                        <td width="193">
                            &nbsp;<asp:TextBox ID="TxtPostalCode" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtPostalCode"
                                ErrorMessage="**"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            Email ID</td>
                        <td width="193">
                            &nbsp;<asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TxtEmail"
                                ErrorMessage="**"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail"
                                ErrorMessage="Invalid Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            Contact No</td>
                        <td width="193">
                            &nbsp;<asp:TextBox ID="TxtContactNo" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtContactNo"
                                ErrorMessage="**"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                        </td>
                        <td width="193">
                        </td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            Photograph</td>
                        <td width="193">
                            <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            Photograph Type</td>
                        <td width="193">
                            <asp:DropDownList ID="DdlType" runat="server">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            Photograph Title</td>
                        <td width="193">
                            <asp:TextBox ID="TxtTitle" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                        </td>
                        <td width="193">
                        </td>
                    </tr>
                    <tr>
                        <td width="18">
                            &nbsp;</td>
                        <td style="width: 115px">
                            &nbsp;</td>
                        <td width="193">
                            &nbsp;<asp:Button ID="CmdSubmit" runat="server"   Text="Submit" OnClick="CmdSubmit_Click" OnClientClick="return confirm('Do you want to save details?')" />&nbsp;
                            <asp:Button ID="CmdReset" runat="server" OnClick="CmdReset_Click" Text="Reset" /></td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                        </td>
                        <td width="193">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

