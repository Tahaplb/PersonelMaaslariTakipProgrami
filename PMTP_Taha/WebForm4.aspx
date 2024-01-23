<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="PMTP_Taha.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">Personel Maaşları Toplam Grafiği</td>
                </tr>
                <tr>
                    <td>
                        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
                            <Series>
                                <asp:Series Name="Series1" XValueMember="Name" YValueMembers="Total">
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT        dbo.tbl_Employees.Empl_Name AS Name, SUM(dbo.tbl_EmployeeWages.Wage_Total) AS Total, YEAR(dbo.tbl_EmployeeWages.Wage_Paid_Date) AS Year
FROM            dbo.tbl_Employees INNER JOIN
                         dbo.tbl_EmployeeWages ON dbo.tbl_Employees.Empl_ID = dbo.tbl_EmployeeWages.Empl_ID
GROUP BY dbo.tbl_Employees.Empl_Name, YEAR(dbo.tbl_EmployeeWages.Wage_Paid_Date)"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Formu Kapat" OnClientClick="window.close()" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
