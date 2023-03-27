<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registrationdetails.aspx.cs" Inherits="Registrationdetails" Title="Student Registration System :: Registration Details" StylesheetTheme="SkinFile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table id="table1" align="center" border="0" cellspacing="1" style="border-right: 1px solid;
        padding-right: 4px; border-top: 1px solid; padding-left: 4px; padding-bottom: 1px;
        border-left: 1px solid; padding-top: 1px; border-bottom: 1px solid; border-collapse: collapse"
        width="600">
        <tr>
            <td class="td_tabcap" style="height: 20px" valign="middle">
                Registration ID : <span id="sp_reg_id" runat ="server"></span> &nbsp; Student Name : <span id="sp_name" runat ="server"></span></td>
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
                        <td style="width: 204px">
                        </td>
                        <td align="center" rowspan="8" valign="top" width="193">
                            <span id="sp_image" runat="server"></span>
                        </td>
                    </tr>
                    <tr>
                        <td width="18">
                            &nbsp;</td>
                        <td style="width: 115px">
                            Course Name</td>
                        <td style="width: 204px">
                            <strong><span id="sp_course_name" runat="server"></span></strong>
                        </td>
                    </tr>
                    <tr style="color: #000000">
                        <td width="18">
                            &nbsp;</td>
                        <td style="width: 115px">
                            Registration Date</td>
                        <td style="width: 204px">
                            <strong><span id="sp_reg_date" runat="server"></span></strong>
                        </td>
                    </tr>
                    <tr style="color: #000000">
                        <td width="18">
                            &nbsp;</td>
                        <td style="width: 115px">
                            Gender</td>
                        <td style="width: 204px">
                            <strong><span id="sp_gender" runat="server"></span></strong>
                        </td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            Date of Birth</td>
                        <td style="width: 204px">
                        <strong><span id="sp_dob" runat="server"></span></strong>
                        </td>
                    </tr>
                    <tr>
                        <td width="18">
                            &nbsp;</td>
                        <td style="width: 115px">
                            Address</td>
                        <td style="width: 204px">
                            <strong><span id="sp_address" runat="server"></span></strong>
                        </td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            City</td>
                        <td style="width: 204px">
                            <strong><span id="sp_city" runat="server"></span></strong>
                        </td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            Country</td>
                        <td style="width: 204px">
                        <strong><span id="sp_country" runat="server"></span></strong>
                        </td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            Postal Code</td>
                        <td style="width: 204px">
                        <strong><span id="sp_postal_code" runat="server"></span></strong>
                        </td>
                        <td align="center" rowspan="1" valign="top" width="193">
                        </td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                        </td>
                        <td style="width: 204px">
                        </td>
                        <td align="center" rowspan="1" valign="top" width="193">
                        </td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                            Registartion Status</td>
                        <td style="width: 204px">
                            <asp:DropDownList ID="DdlStatus" runat="server">
                            </asp:DropDownList></td>
                        <td align="center" rowspan="1" valign="top" width="193">
                        </td>
                    </tr>
                    <tr>
                        <td width="18">
                        </td>
                        <td style="width: 115px">
                        </td>
                        <td style="width: 204px">
                            <asp:Button ID="CmdSubmit" runat="server" Text="Submit" OnClick="CmdSubmit_Click" OnClientClick="return confirm('Do you want to change status?')" />&nbsp;<asp:Button ID="CmdBack"
                                runat="server" Text="Back" OnClick="CmdBack_Click"  /></td>
                        <td align="center" rowspan="1" valign="top" width="193">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

