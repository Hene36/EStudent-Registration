<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyPageEmployee.aspx.cs" Inherits="MyPageEmployee" Title="Student Registration System :: Employee Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table id="table1" align="center" border="0" cellspacing="1" style="border-right: 1px solid;
        padding-right: 4px; border-top: 1px solid; padding-left: 4px; padding-bottom: 1px;
        border-left: 1px solid; padding-top: 1px; border-bottom: 1px solid; border-collapse: collapse"
        width="90%">
        <tr>
            <td class="td_tabcap" style="height: 20px" valign="middle">
                Registered Student Details</td>
        </tr>
        <tr>
            <td>


                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" ForeColor="#333333"
                    GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound"
                    Width="100%">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

