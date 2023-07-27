<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
            height: 235px;
        }
        .auto-style4 {
            width: 129px;
        }
        .auto-style5 {
            position: absolute;
            top: 165px;
            left: 10px;
            z-index: 1;
            width: 125px;
            bottom: 351px;
        }
        .auto-style6 {
            position: absolute;
            top: 135px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
        }
        .auto-style7 {
            position: absolute;
            top: 105px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
        }
        .auto-style8 {
            position: absolute;
            top: 195px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
        }
        .auto-style9 {
            position: absolute;
            top: 220px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
            right: 881px;
        }
        .auto-style10 {
            width: 129px;
            height: 28px;
        }
        .auto-style11 {
            height: 28px;
        }
        .auto-style12 {
            width: 129px;
            height: 29px;
        }
        .auto-style13 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p class="auto-style1">
            <strong>Admin DashBoard</strong></p>
        <p class="auto-style2">
            <strong>&nbsp;</strong><table class="auto-style3">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="EditStudentButton" runat="server" CssClass="auto-style6" ForeColor="Black" OnClick="LinkButton1_Click1">Student Excutives</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:LinkButton ID="EditAdminButton" runat="server" CssClass="auto-style5" ForeColor="Black" OnClick="LinkButton2_Click">Admins</asp:LinkButton>
                    </td>
                    <td>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="adminId" DataValueField="adminId">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-I0CELC7\SQLEXPRESS;Initial Catalog=proj;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Administration]"></asp:SqlDataSource>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:LinkButton ID="EditSponsorButton" runat="server" CssClass="auto-style9" ForeColor="Black" OnClick="LinkButton3_Click">Sponsors</asp:LinkButton>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:LinkButton ID="EditFacultyButton" runat="server" BorderStyle="None" CssClass="auto-style7" ForeColor="Black" OnClick="LinkButton4_Click">FacultyMentors</asp:LinkButton>
                        <asp:LinkButton ID="EditEventsButton" runat="server" CssClass="auto-style8" ForeColor="Black" OnClick="LinkButton5_Click">Events</asp:LinkButton>
                    </td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
    </form>
</body>
</html>
