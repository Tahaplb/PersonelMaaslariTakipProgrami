<%@ Page Language="C#" AutoEventWireup="true" Codefile="frm_EmployeeDataEntry.aspx.cs" Inherits="PMTP_Taha.frm_EmployeeDataEntry" %>

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
            width: 157px;
        }
        .auto-style4 {
            width: 279px;
        }
        .auto-style5 {
            width: 230px;
        }
        .auto-style6 {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6" colspan="4">
                        <h1 class="auto-style2">Personel Veri Giriş Formu</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Adı:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">Soyadı</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Doğum Tarihi:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td class="auto-style3">İşe Giriş Tarihi:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Cinsiyeti:</td>
                    <td class="auto-style5">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="1">Erkek</asp:ListItem>
                            <asp:ListItem Value="2">Kadın</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style3">Aktif mi:</td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Bölümü:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Dept_Name" DataValueField="Dept_ID">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3">Ünvanı:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Title" DataValueField="LK_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Cep:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">Email:</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">Adres:<asp:TextBox ID="TextBox7" runat="server" Width="893px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Kenti</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="City" DataValueField="City">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style3">İli:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Province" DataValueField="Province">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style5">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [LK_ID], [Title] FROM [tbl_Lookups]
WHERE Title is not null"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style3">
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [City] FROM [tbl_Lookups]
WHERE City is not null"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Province] FROM [tbl_Lookups]
WHERE Province is not null"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" InsertCommand="INSERT INTO tbl_Employees (Empl_FName, Empl_LName, Empl_BDate, Empl_Start_Date, Gender_ID, Is_Empl_Active, Dept_ID, Title_ID, Empl_Cell, Empl_Email, Empl_Address, Empl_City, Empl_Province)
VALUES  (@Empl_FName, @Empl_LName, @Empl_BDate, @Empl_Start_Date, @Gender_ID, @Is_Empl_Active, @Dept_ID, @Title_ID, @Empl_Cell, @Empl_Email, @Empl_Address, @Empl_City, @Empl_Province)" SelectCommand="SELECT * FROM [tbl_Employees]">
                            <InsertParameters>
                                <asp:Parameter Name="Empl_FName" />
                                <asp:Parameter Name="Empl_LName" />
                                <asp:Parameter Name="Empl_BDate" />
                                <asp:Parameter Name="Empl_Start_Date" />
                                <asp:Parameter Name="Gender_ID" />
                                <asp:Parameter Name="Is_Empl_Active" />
                                <asp:Parameter Name="Dept_ID" />
                                <asp:Parameter Name="Title_ID" />
                                <asp:Parameter Name="Empl_Cell" />
                                <asp:Parameter Name="Empl_Email" />
                                <asp:Parameter Name="Empl_Address" />
                                <asp:Parameter Name="Empl_City" />
                                <asp:Parameter Name="Empl_Province" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Formu Kapat" OnClientClick="window.close()" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
