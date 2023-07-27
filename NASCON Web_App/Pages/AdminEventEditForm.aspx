<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEventEditForm.aspx.cs" Inherits="WebApplication2.AdminEventEditForm" %>

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
            width: 100%;
            height: 235px;
        }
        .auto-style4 {
            width: 153px;
            text-align: right;
            background-color: #FFFFFF;
        }
        .auto-style6 {
            border-style: inset;
          
            position: absolute;
            top: 135px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
            color: #000000;
            text-decoration: none;
            background-color: #CCCCFF;
        }
        .auto-style5 {
            border-style: inset;
          
            position: absolute;
            top: 165px;
            left: 15px;
            z-index: 1;
            width: 125px;
            bottom: 1432px;
            color: #000000;
            text-decoration: none;
            background-color: #CCCCFF;
        }
        .auto-style9 {
            border-style: inset;
          
            position: absolute;
            top: 225px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
            color: #000000;
            text-decoration: none;
            background-color: #CCCCFF;
        }
        .auto-style7 {
            border-style: inset;
          
            position: absolute;
            top: 105px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
            color: #000000;
            text-decoration: none;
            background-color: #CCCCFF;
        }
        .auto-style8 {
            border-style: inset;
          
            position: absolute;
            top: 195px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
            color: #000000;
            text-decoration: none;
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
            text-align: left;
            margin-left: 360px;
        }
        .auto-style22 {
            position: absolute;
            top: 130px;
            left: 245px;
            z-index: 1;
            height: 100px;
            width: 802px;
        }
        .auto-style23 {
            position: absolute;
            top: 320px;
            left: 345px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 320px;
            left: 875px;
            z-index: 1;
        }
    </style>
</head>
<body style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 1616px; width: 1120px">
    <form id="form1" runat="server">
        <p class="auto-style1">
            <strong>Admin DashBoard</strong></p>
        <p class="auto-style2">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4">
                        <strong>
                        <asp:LinkButton ID="EditStudentButton" runat="server" CssClass="auto-style6" ForeColor="Black" OnClick="LinkButton1_Click1">Student Excutives</asp:LinkButton>
                        <asp:LinkButton ID="EditAdminButton" runat="server" CssClass="auto-style5" ForeColor="Black" OnClick="LinkButton2_Click">Admins</asp:LinkButton>
                       
                        <asp:LinkButton ID="EditSponsorButton" runat="server" CssClass="auto-style9" ForeColor="Black" OnClick="LinkButton3_Click">Sponsors</asp:LinkButton>
                        <asp:LinkButton ID="EditFacultyButton" runat="server" CssClass="auto-style7" ForeColor="Black" OnClick="LinkButton4_Click">FacultyMentors</asp:LinkButton>
                        <asp:LinkButton ID="EditEventsButton" runat="server" CssClass="auto-style8" ForeColor="Black" OnClick="LinkButton5_Click">Events</asp:LinkButton>
                        </strong>
                    </td>
                    <td>
                        <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged1">
                            <br />
                            <asp:View ID="View1" runat="server">
                                <br />
                                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" CssClass="auto-style22">
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
                                <table class="auto-style14">
                                    <tr>
                                        <td class="auto-style15">EventId:</td>
                                        <td style="text-align: left">
                                            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" style="text-align: left; margin-left: 18px" Width="183px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style19">EventName:</td>
                                        <td class="auto-style20">
                                            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" style="text-align: left; margin-left: 18px" Width="183px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16">Venue:</td>
                                        <td class="auto-style17">
                                            <asp:TextBox ID="TextBox4" runat="server" Height="16px" OnTextChanged="TextBox4_TextChanged" style="text-align: left; margin-left: 18px; " Width="183px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">Price:</td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged" style="text-align: left; margin-left: 18px" Width="183px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">Date:</td>
                                        <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                <asp:ListItem Selected="True">Day</asp:ListItem>
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                                <asp:ListItem>7</asp:ListItem>
                                                <asp:ListItem>8</asp:ListItem>
                                                <asp:ListItem>9</asp:ListItem>
                                                <asp:ListItem>10</asp:ListItem>
                                                <asp:ListItem>11</asp:ListItem>
                                                <asp:ListItem>12</asp:ListItem>
                                                <asp:ListItem>13</asp:ListItem>
                                                <asp:ListItem>14</asp:ListItem>
                                                <asp:ListItem>15</asp:ListItem>
                                                <asp:ListItem>16</asp:ListItem>
                                                <asp:ListItem>17</asp:ListItem>
                                                <asp:ListItem>18</asp:ListItem>
                                                <asp:ListItem>19</asp:ListItem>
                                                <asp:ListItem>20</asp:ListItem>
                                                <asp:ListItem>21</asp:ListItem>
                                                <asp:ListItem>22</asp:ListItem>
                                                <asp:ListItem>23</asp:ListItem>
                                                <asp:ListItem>24</asp:ListItem>
                                                <asp:ListItem>25</asp:ListItem>
                                                <asp:ListItem>26</asp:ListItem>
                                                <asp:ListItem>27</asp:ListItem>
                                                <asp:ListItem>28</asp:ListItem>
                                                <asp:ListItem>29</asp:ListItem>
                                                <asp:ListItem>30</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                                <asp:ListItem Selected="True">Month</asp:ListItem>
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                                <asp:ListItem>7</asp:ListItem>
                                                <asp:ListItem>8</asp:ListItem>
                                                <asp:ListItem>9</asp:ListItem>
                                                <asp:ListItem>10</asp:ListItem>
                                                <asp:ListItem>11</asp:ListItem>
                                                <asp:ListItem>12</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                                                <asp:ListItem Selected="True">Year</asp:ListItem>
                                                <asp:ListItem>2022</asp:ListItem>
                                                <asp:ListItem>2023</asp:ListItem>
                                                <asp:ListItem>2024</asp:ListItem>
                                                <asp:ListItem>2025</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">Time:</td>
                                        <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                                                <asp:ListItem Selected="True">Hour</asp:ListItem>
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                                <asp:ListItem>7</asp:ListItem>
                                                <asp:ListItem>8</asp:ListItem>
                                                <asp:ListItem>9</asp:ListItem>
                                                <asp:ListItem>10</asp:ListItem>
                                                <asp:ListItem>11</asp:ListItem>
                                                <asp:ListItem>12</asp:ListItem>
                                                <asp:ListItem>13</asp:ListItem>
                                                <asp:ListItem>14</asp:ListItem>
                                                <asp:ListItem>15</asp:ListItem>
                                                <asp:ListItem>16</asp:ListItem>
                                                <asp:ListItem>17</asp:ListItem>
                                                <asp:ListItem>18</asp:ListItem>
                                                <asp:ListItem>19</asp:ListItem>
                                                <asp:ListItem>20</asp:ListItem>
                                                <asp:ListItem>21</asp:ListItem>
                                                <asp:ListItem>22</asp:ListItem>
                                                <asp:ListItem>23</asp:ListItem>
                                                <asp:ListItem>00</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="DropDownList5" runat="server" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                                                <asp:ListItem Selected="True">Minutes</asp:ListItem>
                                                <asp:ListItem>00</asp:ListItem>
                                                <asp:ListItem>05</asp:ListItem>
                                                <asp:ListItem>10</asp:ListItem>
                                                <asp:ListItem>15</asp:ListItem>
                                                <asp:ListItem>20</asp:ListItem>
                                                <asp:ListItem>25</asp:ListItem>
                                                <asp:ListItem>30</asp:ListItem>
                                                <asp:ListItem>35</asp:ListItem>
                                                <asp:ListItem>40</asp:ListItem>
                                                <asp:ListItem>45</asp:ListItem>
                                                <asp:ListItem>50</asp:ListItem>
                                                <asp:ListItem>55</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">Student Head:</td>
                                        <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="StudentExecutive" DataTextField="studentName" DataValueField="studentName" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="StudentExecutive" runat="server" ConnectionString="<%$ ConnectionStrings:localstring %>" SelectCommand="SELECT [studentName] FROM [StudentExecutive]"></asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style15">Assigned Mentor:</td>
                                        <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="Mentors" DataTextField="mentorName" DataValueField="mentorName" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged" style="height: 22px">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="Mentors" runat="server" ConnectionString="<%$ ConnectionStrings:localstring %>" OnSelecting="Mentors_Selecting" SelectCommand="SELECT [mentorName] FROM [FacultyMentor]" ProviderName="<%$ ConnectionStrings:localstring.ProviderName %>"></asp:SqlDataSource>
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
                               
                                <table class="auto-style14">
                                    <tr>
                                        <td class="auto-style15">EventId:</td>
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                    </td>
                </tr>
                </table>
        </p>
    </form>
</body>
</html>
