<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminSponsorsEditForm.aspx.cs" Inherits="WebApplication2.AdminSponsorsEditForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="position: relative">
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
         
        }
        .auto-style4 {
            width: 143px;
        }
        .auto-style6 {
            border-style: inset;
            border-width: 4px;
            position: absolute;
            top: 135px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
            text-decoration: none;
            color: #000000;
            background-color: #CCCCFF;
        }
        .auto-style5 {
            border-style: inset;
            border-width: 4px;
            position: absolute;
            top: 165px;
            left: 15px;
            z-index: 1;
            width: 125px;
            bottom: 1431px;
            text-decoration: none;
            color: #000000;
            background-color: #CCCCFF;
        }
        .auto-style9 {
            border-style: inset;
            border-width: 4px;
            position: absolute;
            top: 225px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
            text-decoration: none;
            color: #000000;
            background-color: #CCCCFF;
        }
        .auto-style7 {
            border-style: inset;
            border-width: 4px;
            position: absolute;
            top: 105px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
            text-decoration: none;
            color: #000000;
            background-color: #CCCCFF;
        }
        .auto-style8 {
            border-style: inset;
            border-width: 4px;
            position: absolute;
            top: 195px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
            text-decoration: none;
            color: #000000;
            background-color: #CCCCFF;
        }
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            width: 407px;
            text-align: right;
        }
        .auto-style16 {
            width: 407px;
            text-align: right;
            height: 23px;
        }
        .auto-style17 {
            height: 23px;
            text-align: left;
        }
        .auto-style19 {
            width: 407px;
            text-align: right;
            height: 26px;
        }
        .auto-style20 {
            text-align: left;
            height: 26px;
        }
        .auto-style21 {
            width: 972px;
        }
        .auto-style22 {
            position: absolute;
            top: 145px;
            left: 245px;
            z-index: 1;
            height: 150px;
            width: 810px;
        }
        .auto-style23 {
            position: absolute;
            top: 103px;
            left: 354px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 104px;
            left: 830px;
            z-index: 1;
        }
    </style>
</head>
<body style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 1616px; width: 1120px">
    <form id="form1" runat="server">
        <p class="auto-style1">
            <strong>Admin DashBoard</strong></p>
        <p class="auto-style2">
            <strong>&nbsp;</strong><table class="auto-style3">
                <tr>
                    <td class="auto-style4">
                        <strong>
                        <asp:LinkButton ID="EditStudentButton" runat="server" CssClass="auto-style6" ForeColor="Black" OnClick="LinkButton1_Click1">Student Excutives</asp:LinkButton>
                        <asp:LinkButton ID="EditAdminButton" runat="server" CssClass="auto-style5" ForeColor="Black" OnClick="LinkButton2_Click">Admins</asp:LinkButton>
                        <asp:LinkButton ID="EditFacultyButton" runat="server" CssClass="auto-style7" ForeColor="Black" OnClick="LinkButton4_Click">FacultyMentors</asp:LinkButton>
                        <asp:LinkButton ID="EditEventsButton" runat="server" CssClass="auto-style8" ForeColor="Black" OnClick="LinkButton5_Click">Events</asp:LinkButton>
                        </strong>
                    </td>
                    <td class="auto-style21">
                        <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged1">
                            <br />
                            <asp:View ID="View1" runat="server">
                                <br />
                                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" CssClass="auto-style22">
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                    <RowStyle BackColor="White" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br style="z-index: 1; left: 636px; top: 269px; position: absolute" />
                                <br />
                                <br />
                                <br />
                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" Width="78px" CssClass="auto-style24" />
                                <br />
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" Width="78px" CssClass="auto-style23" />
                                <br />
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <br />
                                Entry to Add<br />
                                <table class="auto-style14">
                                    <tr>
                                        <td class="auto-style15">SponsorId:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="TextBox1" runat="server" style="text-align: left; margin-left: 18px" Width="183px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19">CompanyName:</td>
                                        <td class="auto-style20">
                                            <asp:TextBox ID="TextBox2" runat="server" style="text-align: left; margin-left: 18px" Width="183px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19">Rep.Name:</td>
                                        <td class="auto-style20">
                                            <asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox6_TextChanged" style="text-align: left; margin-left: 18px" Width="183px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19">Rep.Cnic:</td>
                                        <td class="auto-style20">
                                            <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox7_TextChanged" style="text-align: left; margin-left: 18px" Width="183px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">Cateogory:</td>
                                        <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="CategoryName" DataTextField="categoryName" DataValueField="categoryName" Height="16px" Width="191px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AppendDataBoundItems="True" EnableTheming="True">
                                                <asp:ListItem Value="Null">Null</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="CategoryName" runat="server" ConnectionString="<%$ ConnectionStrings:localstring %>" SelectCommand="SELECT [categoryName] FROM [Category]" ProviderName="<%$ ConnectionStrings:localstring.ProviderName %>"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" OnClick="Button6_Click" Text="Cancel" Width="71px" />
                             
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="OK" Width="71px" />
                                <br />
                            </asp:View>
                            <asp:View ID="View3" runat="server">
                                <br />
                                Entry to Modify<br />
                                <table class="auto-style14">
                                    <tr>
                                        <td class="auto-style15">SponsorId:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="TextBox3" runat="server" style="text-align: left; margin-left: 18px" Width="183px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Cancel" Width="71px" />
                                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="OK" Width="71px" />
                                <br />
                                <br />
                            </asp:View>
                            <br />
                        </asp:MultiView>
                        <br />
                        <br />
                        <br />
                        <strong>
                        <asp:LinkButton ID="EditSponsorButton0" runat="server" CssClass="auto-style9" ForeColor="Black" OnClick="LinkButton3_Click">Sponsors</asp:LinkButton>
                        </strong>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                    </td>
                </tr>
                </table>
        </p>
    </form>
</body>
</html>
