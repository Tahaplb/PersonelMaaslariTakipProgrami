<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="PMTP_Taha.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-center" colspan="3" style="font-size: x-large"><strong>PMTP Raporlar</strong></td>
        </tr>
        <tr>
            <td class="text-left">
                <asp:Button ID="Button1" runat="server" Text="Bölümlere Göre Personel Raporu" Width="249px" OnClientClick="target='_blank'" PostBackUrl="~/rpt_EmployeesByDepartment.aspx" />
            </td>
            <td class="text-center">
                <asp:Button ID="Button4" runat="server" Text="Personele Göre Maaşlar Raporu" Width="232px" OnClientClick="target='_blank'" PostBackUrl="~/rpt_WagesByEmployee.aspx" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left">
                <asp:Button ID="Button2" runat="server" Text="Personel Maaş Grafiği" Width="250px" OnClientClick="target='blank'" PostBackUrl="~/WebForm4.aspx" />
            </td>
            <td class="text-center">
                <asp:Button ID="Button5" runat="server" Text="Personel İletişim Raporu" Width="232px" OnClientClick="target='_blank'" PostBackUrl="~/WebForm5.aspx" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left" style="height: 20px">
                </td>
            <td class="text-right" style="height: 20px">
                </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
