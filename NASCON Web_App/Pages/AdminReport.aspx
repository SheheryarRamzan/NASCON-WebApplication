<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminReport.aspx.cs" Inherits="WebApplication2.AdminReport" %>

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
            border-style: inset;
            border-width: 3px;
            position: absolute;
            top: 185px;
            left: 15px;
            z-index: 1;
            width: 125px;
            color: #000000;
            background-color: #CCCCFF;
        }
        .auto-style6 {
            border-style: inset;
            border-width: 3px;
            position: absolute;
            top: 149px;
            left: 15px;
            z-index: 1;
            width: 131px;
            height: 20px;
            color: #000000;
            background-color: #CCCCFF;
        }
        .auto-style7 {
            border-style: inset;
            border-width: 3px;
            position: absolute;
            top: 115px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
            color: #000000;
            background-color: #CCCCFF;
        }
        .auto-style8 {
            border-style: inset;
            border-width: 3px;
            position: absolute;
            top: 215px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 19px;
            right: 770px;
            color: #000000;
            background-color: #CCCCFF;
        }
        .auto-style9 {
            border-style: inset;
            border-width: 3px;
            position: absolute;
            top: 255px;
            left: 15px;
            z-index: 1;
            width: 125px;
            height: 20px;
            right: 770px;
            color: #000000;
            background-color: #CCCCFF;
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
            text-align: right;
        }
        .auto-style13 {
            height: 29px;
        }
        .auto-style14 {
            width: 100%;
            height: 382px;
        }
        .auto-style17 {
            width: 497px;
            height: 24px;
        }
        .auto-style18 {
            text-align: left;
            height: 23px;
        }
        .auto-style21 {
            text-align: left;
            width: 497px;
            height: 24px;
        }
        .auto-style24 {
            height: 24px;
        }
        .auto-style25 {
            position: absolute;
      
            left: 653px;
        }
        .auto-style26 {
            position: absolute;
         
            left: 653px;
        }
        .auto-style27 {
            position: absolute;
        
            left: 653px;
        }
        .auto-style28 {
            position: absolute;
       
            left: 653px;
        }
        .auto-style31 {
            height: 24px;
            text-align: left;
        }
        .auto-style32 {
            position: absolute;
         
            left: 653px;
        }
        .auto-style33 {
            position: absolute;
          
            left: 653px;
        }
        .auto-style34 {
            position: absolute;
          
            left: 653px;
        }
        .auto-style35 {
            position: absolute;
            left: 653px;
        }
        .auto-style36 {
            position: absolute;
            left: 653px;
            z-index: 1;
            height: 26px;
        }
        .auto-style37 {
            position: absolute;
            left: 653px;
            z-index: 1;
        }
        .auto-style38 {
            position: absolute;
            left: 653px;
            z-index: 1;
        }
        .auto-style39 {
            text-align: left;
            width: 497px;
            height: 23px;
        }
        .auto-style40 {
            width: 187px;
            height: 133px;
            position: absolute;
            left: 575px;
            z-index: 1;
        }
        .auto-style41 {
            width: 187px;
            height: 133px;
            position: absolute;
          
            z-index: 1;
        }
        .auto-style42 {
            width: 187px;
            height: 133px;
            position: absolute;
          
            left: 578px;
            z-index: 1;
        }
           .auto-style43 {
            width: 187px;
            height: 133px;
            position: absolute;
         
            z-index: 1;
            left: 580px;
        }
            .auto-style44 {
            width: 187px;
            height: 2px;
            position: absolute;
         
         
            z-index: 1;
            left: 579px;
            top: 1901px;
        }
           .auto-style45 {
            width: 187px;
            height: 133px;
            position: absolute;
            z-index: 1;
            left: 579px;
        }
           .auto-style46 {
            width: 187px;
            height: 133px;
            position: absolute;
            z-index: 1;
            left: 582px;
        }
           .auto-style47 {
            width: 187px;
            height: 133px;
            position: absolute;
            z-index: 1;
            left: 580px;
        }
           .auto-style48 {
            width: 187px;
            height: 133px;
            position: absolute;
            z-index: 1;
            left: 580px;
        }
           .auto-style49 {
            width: 187px;
            height: 133px;
            position: absolute;
            z-index: 1;
            left: 582px;
        }
           .auto-style50 {
            width: 187px;
            height: 133px;
            position: absolute;
            z-index: 1;
            left: 581px;
        }
           .auto-style51 {
            height: 133px;
            position: absolute;
            z-index: 1;
            top: 495px;
            left: 362px;
        }
        .auto-style52 {
            width: 129px;
            height: 28px;
            text-align: right;
        }
        .auto-style53 {
            width: 129px;
            text-align: right;
        }
        .auto-style54 {
            text-align: right;
        }
        .auto-style55 {
            border-style: inset;
            border-width: 3px;
            position: absolute;
            left: 12px;
            top: 307px;
            width: 125px;
            color: #000000;
            background-color: #CCCCFF;
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
                    <td class="auto-style54">
                        <strong>
                        <asp:LinkButton ID="EditStudentButton" runat="server" CssClass="auto-style6" ForeColor="Black" OnClick="LinkButton1_Click1">Student Excutivess</asp:LinkButton>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style53">
                        <strong>
                        <asp:LinkButton ID="EditAdminButton" runat="server" CssClass="auto-style5" ForeColor="Black" OnClick="LinkButton2_Click">Adminss</asp:LinkButton>
                        </strong>
                    </td>
                    <td>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:MultiView ID="MultiView1" runat="server">
                            <br />
                            <asp:View ID="View1" runat="server">
                                <table class="auto-style14">
                                    <tr>
                                        <td class="auto-style39">List of all the registered participants and their information</td>
                                        <td class="auto-style18">&nbsp;<asp:Button ID="Button1" runat="server" CssClass="auto-style25" style="z-index: 1" Text="Button" OnClick="Button1_Click" />
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style39">Total amount collected by sponsors for each category</td>
                                        <td class="auto-style18">&nbsp;<asp:Button ID="Button2" runat="server" CssClass="auto-style26" style="z-index: 1; height: 26px; width: 56px;" Text="Button" OnClick="Button2_Click" />
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style39">List of the events and their information </td>
                                        <td class="auto-style18">&nbsp;<asp:Button ID="Button3" runat="server" CssClass="auto-style27" style="z-index: 1" Text="Button" OnClick="Button3_Click" />
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style39">List of all the Faculty Mentors</td>
                                        <td class="auto-style18">&nbsp;<asp:Button ID="Button4" runat="server" CssClass="auto-style28" style="z-index: 1" Text="Button" OnClick="Button4_Click" />
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style39">List of all Student Executives </td>
                                        <td class="auto-style18">&nbsp;<asp:Button ID="Button5" runat="server" CssClass="auto-style32" style="z-index: 1; height: 26px;" Text="Button" OnClick="Button5_Click" />
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style39">Search specific participant by unique ID</td>
                                        <td class="auto-style18">&nbsp;<asp:Button ID="Button6" runat="server" CssClass="auto-style33" style="z-index: 1" Text="Button" OnClick="Button6_Click" />
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style39">List of sponsors and their information</td>
                                        <td class="auto-style18">&nbsp;<asp:Button ID="Button7" runat="server" CssClass="auto-style34" style="z-index: 1; height: 26px;" Text="Button" OnClick="Button7_Click" />
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style39">List of those participants who have registered for food deal</td>
                                        <td class="auto-style18">&nbsp;<asp:Button ID="Button8" runat="server" CssClass="auto-style35" style="z-index: 1" Text="Button" OnClick="Button8_Click1" />
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style39">List of events to be held on specific date</td>
                                        <td class="auto-style18">&nbsp;<asp:Button ID="Button9" runat="server" CssClass="auto-style36" Text="Button" OnClick="Button9_Click" />
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style39">Total number of registrations in a specific event.</td>
                                        <td class="auto-style18">&nbsp;<asp:Button ID="Button10" runat="server" CssClass="auto-style37" Text="Button" OnClick="Button10_Click" />
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style21">Name of faculty mentor, event head, and details of a specific event.</td>
                                        <td class="auto-style31">&nbsp;<asp:Button ID="Button11" runat="server" CssClass="auto-style38" Text="Button" OnClick="Button11_Click" />
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style17">&nbsp;</td>
                                        <td class="auto-style24">&nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <br />
                                <br />
                                <asp:GridView ID="GridView1" runat="server" CssClass="auto-style40">
                                </asp:GridView>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:View>
                            <asp:View ID="View3" runat="server">
                                <br />
                                <asp:GridView ID="GridView2" runat="server" CssClass="auto-style41">
                                </asp:GridView>
                                <br />
                                <br />
                                <td>Choose Category :</td>
                                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" CssClass="auto-style51" DataSourceID="SqlDataSource1" DataTextField="categoryName" DataValueField="categoryName" EnableTheming="True" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="191px">
                                </asp:DropDownList>
                                &nbsp;<%--<td class="auto-style20">
                                            <asp:TextBox ID="TextBox1" runat="server" style="text-align: left; margin-left: 18px" Width="183px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                        </td>--%><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(local)\SQLEXPRESS;Initial Catalog=proj;Integrated Security=True" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [categoryName] FROM [Category]"></asp:SqlDataSource>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:View>
                            <asp:View ID="View4" runat="server">
                                <br />
                                <br />
                                <asp:GridView ID="GridView3" runat="server" CssClass="auto-style42">
                                </asp:GridView>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:View>
                            <asp:View ID="View5" runat="server">
                                <br />
                                <asp:GridView ID="GridView4" runat="server" CssClass="auto-style43">
                                </asp:GridView>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:GridView ID="GridView5" runat="server" CssClass="auto-style44">
                                </asp:GridView>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:View>
                            <asp:View ID="View6" runat="server">
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:View>
                            <asp:View ID="View7" runat="server">
                                <br />
                                <br />
                                <br />
                                                                            <td class="auto-style19">Enter Id:</td>

                                 <td class="auto-style20">
                                            <asp:TextBox ID="TextBox1" runat="server" style="text-align: left; margin-left: 18px" Width="183px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                        </td>
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:GridView ID="GridView6" runat="server" CssClass="auto-style45">
                                </asp:GridView>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:View>
                            <asp:View ID="View8" runat="server">
                                <br />
                                <br />
                                <br />
                                <asp:GridView ID="GridView7" runat="server" CssClass="auto-style46">
                                </asp:GridView>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:View>
                            <asp:View ID="View9" runat="server">
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:GridView ID="GridView8" runat="server" CssClass="auto-style47">
                                </asp:GridView>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:View>
                            <asp:View ID="View10" runat="server">
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                                                                                            <td class="auto-style19">Enter Date:</td>

                                <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
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
                                <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
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
                                <br />
                                <br />
                                <asp:GridView ID="GridView9" runat="server" CssClass="auto-style48">
                                </asp:GridView>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:View>
                            <asp:View ID="View11" runat="server">
                                <br />
                                <br />
                                <br />
<td>Choose Event :</td>
                                <asp:DropDownList ID="DropDownList4" runat="server" AppendDataBoundItems="True" CssClass="auto-style51" DataSourceID="SqlDataSource2" DataTextField="EventName" DataValueField="EventName" EnableTheming="True" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="191px">
                                </asp:DropDownList>
                                &nbsp;<%--<td class="auto-style20">
                                            <asp:TextBox ID="TextBox1" runat="server" style="text-align: left; margin-left: 18px" Width="183px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                        </td>--%><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(local)\SQLEXPRESS;Initial Catalog=proj;Integrated Security=True" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [eventName] FROM [Events]"></asp:SqlDataSource>
                               
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:GridView ID="GridView10" runat="server" CssClass="auto-style49">
                                </asp:GridView>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:View>
                            <asp:View ID="View12" runat="server">
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:GridView ID="GridView11" runat="server" CssClass="auto-style50">
                                </asp:GridView>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:View>
                            <br />
                        </asp:MultiView>
                        <br />
                        <br />
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style52">
                        <strong>
                        <asp:LinkButton ID="EditSponsorButton" runat="server" CssClass="auto-style9" ForeColor="Black" OnClick="LinkButton3_Click">Sponsorss</asp:LinkButton>
                             <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style55" ForeColor="Black" OnClick="LinkButton5_Click">Reports</asp:LinkButton>
                        </strong>
                        </em>
                        </strong>
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
                        <strong>
                        <asp:LinkButton ID="EditFacultyButton" runat="server"  CssClass="auto-style7" ForeColor="Black" OnClick="LinkButton4_Click">FacultyMentors</asp:LinkButton>
                        <asp:LinkButton ID="EditEventsButton" runat="server" CssClass="auto-style8" ForeColor="Black" OnClick="LinkButton5_Click">Eventss</asp:LinkButton>
                        </strong>
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
