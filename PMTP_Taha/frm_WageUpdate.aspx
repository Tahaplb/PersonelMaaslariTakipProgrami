<%@ Page Language="C#" AutoEventWireup="true" Codefile="frm_WageUpdate.aspx.cs" Inherits="PMTP_Taha.frm_WageUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            width: 213px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <h1 class="auto-style2">Maaş Güncelleme Formu</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Personel Adı:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style3" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID" Height="16px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Wage_ID" DataSourceID="SqlDataSource2" Width="250px">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="Wage_ID" HeaderText="Wage_ID" InsertVisible="False" ReadOnly="True" SortExpression="Wage_ID" />
                                <asp:BoundField DataField="Empl_ID" HeaderText="Empl_ID" SortExpression="Empl_ID" />
                                <asp:BoundField DataField="Wage_Paid_Date" HeaderText="Wage_Paid_Date" SortExpression="Wage_Paid_Date" />
                                <asp:BoundField DataField="Wage_Amount" HeaderText="Wage_Amount" SortExpression="Wage_Amount" />
                                <asp:BoundField DataField="Wage_Commission" HeaderText="Wage_Commission" SortExpression="Wage_Commission" />
                                <asp:BoundField DataField="Month_ID" HeaderText="Month_ID" SortExpression="Month_ID" />
                                <asp:BoundField DataField="Wage_Total" HeaderText="Wage_Total" ReadOnly="True" SortExpression="Wage_Total" />
                                <asp:BoundField DataField="Wage_Year" HeaderText="Wage_Year" ReadOnly="True" SortExpression="Wage_Year" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT * FROM [tbl_EmployeeWages] WHERE Empl_ID=@Empl_ID" UpdateCommand="UPDATE tbl_EmployeeWages
SET Wage_Paid_Date=@Wage_Paid_Date, Wage_Amount=@Wage_Amount, Wage_Commission=@Wage_Commission, Month_ID=@Month_ID
WHERE Wage_ID=@Wage_ID" DeleteCommand="DELETE tbl_EmployeeWages 
WHERE Wage_ID=@Wage_ID">
                            <DeleteParameters>
                                <asp:Parameter Name="Wage_ID" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Empl_ID" PropertyName="SelectedValue" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Wage_Paid_Date" type="DateTime"/>
                                <asp:Parameter Name="Wage_Amount" type="Decimal" />
                                <asp:Parameter Name="Wage_Commission" Type="Decimal" />
                                <asp:Parameter Name="Month_ID" type="Int32" />
                                <asp:Parameter Name="Wage_ID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
