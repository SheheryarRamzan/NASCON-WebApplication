<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminFacultyEditForm.aspx.cs" Inherits="WebApplication2.AdminFacultyEditForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="position: absolute">
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
            width: 148px;
        }
        .auto-style6 {
            border-style: inset;
            position: absolute;
            top: 135px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
            background-color: #CCCCFF;
            text-decoration: none;
        }
        .auto-style5 {
            border-style: inset;
            position: absolute;
            top: 165px;
            left: 15px;
            z-index: 1;
            width: 125px;
            bottom: 1432px;
            background-color: #CCCCFF;
            text-decoration: none;
        }
        .auto-style9 {
            border-style: inset;
            position: absolute;
            top: 225px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
            background-color: #CCCCFF;
            text-decoration: none;
        }
        .auto-style7 {
            border-style: inset;
            position: absolute;
            top: 105px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
            background-color: #CCCCFF;
            text-decoration: none;
        }
        .auto-style8 {
            border-style: inset;
            position: absolute;
            top: 195px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
            background-color: #CCCCFF;
            text-decoration: none;
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
        .auto-style18 {
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
            width: 148px;
            text-align: right;
        }
        .auto-style22 {
            border-style: inset;
        }
        .auto-style23 {
            position: absolute;
            top: 160px;
            left: 245px;
            z-index: 1;
            height: 130px;
            width: 805px;
        }
        .auto-style24 {
            position: absolute;
            top: 360px;
            left: 340px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 360px;
            left: 605px;
            z-index: 1;
        }
        .auto-style26 {
            position: absolute;
            top: 360px;
            left: 880px;
            z-index: 1;
            
        }
        .auto-style27 {
            border-style: inset;
            position: absolute;
            top: 264px;
            left: 16px;
            z-index: 1;
            width: 125px;
            height: 20px;
            background-color: #CCCCFF;
            text-decoration: none;
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
                    <td class="auto-style21">
                        <strong>
                        <asp:LinkButton ID="EditStudentButton" runat="server" CssClass="auto-style6" ForeColor="Black" OnClick="LinkButton1_Click1">Student Excutives</asp:LinkButton>
                        <asp:LinkButton ID="EditAdminButton" runat="server" CssClass="auto-style5" ForeColor="Black" OnClick="LinkButton2_Click" style="height: 19px">Admins</asp:LinkButton>
                        <em class="auto-style22">
                        <asp:LinkButton ID="EditSponsorButton" runat="server" CssClass="auto-style9" ForeColor="Black" OnClick="LinkButton3_Click">Sponsors</asp:LinkButton>
                        </em>
                        <asp:LinkButton ID="EditFacultyButton" runat="server" CssClass="auto-style7" ForeColor="Black" OnClick="LinkButton4_Click">FacultyMentors</asp:LinkButton>
                        <em class="auto-style22">
                        <asp:LinkButton ID="EditEventsButton" runat="server" CssClass="auto-style8" ForeColor="Black" OnClick="LinkButton5_Click">Events</asp:LinkButton>
                        </em>
                            <em class="auto-style22">
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style27" ForeColor="Black" OnClick="LinkButton6_Click">Reports</asp:LinkButton>
                        </em>
                        </strong>
                    </td>
                    <td>
                        <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged1">
                            <br />
                            <asp:View ID="View1" runat="server">
                                <br />
                                <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" CssClass="auto-style23" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
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
                                <br />
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Modify" Width="78px" CssClass="auto-style25" />
                                <br />
                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" Width="78px" CssClass="auto-style26" />
                                <br />
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" Width="78px" CssClass="auto-style24" />
                                <br />
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <br />
                                <table class="auto-style14">
                                    <tr>
                                        <td class="auto-style15">Id:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="TextBox1" runat="server" style="text-align: left; margin-left: 18px" Width="183px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19">Name:</td>
                                        <td class="auto-style20">
                                            <asp:TextBox ID="TextBox2" runat="server" style="text-align: left; margin-left: 18px" Width="183px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">Cateogory:</td>
                                        <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="categoryName" DataValueField="categoryName" Height="16px" Width="191px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AppendDataBoundItems="True" EnableTheming="True">
                                                <asp:ListItem Value="Null">Null</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:localstring %>" SelectCommand="SELECT [categoryName] FROM [Category]" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:localstring.ProviderName %>"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">Event:</td>
                                        <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="DropDownList3" runat="server" DataTextField="eventName" DataValueField="eventName" Height="16px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="191px" AppendDataBoundItems="True" DataSourceID="EventName">
                                                <asp:ListItem>None</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="EventName" runat="server" ConnectionString="<%$ ConnectionStrings:localstring %>" SelectCommand="SELECT [eventName] FROM [Events]"></asp:SqlDataSource>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                        
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Cancel" Width="71px" />                             
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="OK" Width="71px" />
                                <br />
                            </asp:View>
                            <asp:View ID="View3" runat="server">
                                <br />
                                Entry to Modify<br />
                                <table class="auto-style14">
                                    <tr>
                                        <td class="auto-style15">Id:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="TextBox3" runat="server" style="text-align: left; margin-left: 18px" Width="183px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">Cateogory:</td>
                                        <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="CategoryName" DataTextField="categoryName" DataValueField="categoryName" Height="16px" Width="191px" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="CategoryName" runat="server" ConnectionString="<%$ ConnectionStrings:localstring %>" SelectCommand="SELECT [categoryName] FROM [Category]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">Event:</td>
                                        <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="DropDownList7" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="191px" AppendDataBoundItems="True" DataSourceID="EventName" DataTextField="eventName" DataValueField="eventName">
                                                <asp:ListItem Selected="True">Null</asp:ListItem>
                                            </asp:DropDownList>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                             
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button8" runat="server" OnClick="Button7_Click" Text="Cancel" Width="71px" />                                
                               
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                
                                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="OK" Width="71px" />
                                <br />
                                <br />
                            </asp:View>
                            <br />
                            <asp:View ID="View4" runat="server">
                                <br />
                                Entry to Delete<br />
                                <table class="auto-style14">
                                    <tr>
                                        <td class="auto-style15">Id:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="TextBox5" runat="server" style="text-align: left; margin-left: 18px" Width="183px" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">Cateogory:</td>
                                        <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">Event:</td>
                                        <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:CheckBox ID="CheckBox2" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                              
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Button ID="Button9" runat="server" OnClick="Button7_Click" Text="Cancel" Width="71px" />                                
                                
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="OK" Width="71px" />
&nbsp;
                                <br />
                            </asp:View>
                        </asp:MultiView>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                    </td>
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
