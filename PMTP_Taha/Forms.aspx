<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Forms.aspx.cs" Inherits="PMTP_Taha.Forms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-center" colspan="3" style="font-size: x-large"><strong>PMTP Formlar</strong></td>
        </tr>
        <tr>
            <td class="text-left">
                <asp:Button ID="Button1" runat="server" Text="Personel Veri Gerişi" Width="243px" PostBackUrl="~/frm_EmployeeDataEntry.aspx" OnClientClick="target='_blank'" />
            </td>
            <td class="text-center">
                <asp:Button ID="Button4" runat="server" Text="Maaş Veri Girişi Formu" style="margin-left: 0" Width="209px" OnClientClick="target=&quot;_blank&quot;" PostBackUrl="~/frm_WageDataEntry.aspx" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left">
                <asp:Button ID="Button2" runat="server" Text="Personel Veri Güncelleme" Width="244px" OnClientClick="target='_blank'" PostBackUrl="~/WebForm6.aspx" />
            </td>
            <td class="text-center">
                <asp:Button ID="Button5" runat="server" Text="Maaş Veri Güncelleme" Width="208px" OnClientClick="target='_blank'" PostBackUrl="~/frm_WageUpdate.aspx" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-left">
                <asp:Button ID="Button3" runat="server" Text="Personel Wizard Veri Girişi" Width="244px" OnClientClick="target='blank'" PostBackUrl="~/frm_EmployeeWizard.aspx" />
            </td>
            <td class="text-center">
                <asp:Button ID="Button6" runat="server" Text="Bölüm Giriş ve Güncelleme Formu" style="margin-left: 0" Width="212px" OnClientClick="target='_blank'" PostBackUrl="~/frm_Departments.aspx" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
