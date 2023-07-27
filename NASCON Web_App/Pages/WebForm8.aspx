<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="DataBase_SemesterProject.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 16px;
            left: 405px;
            right: 463px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 72px;
            left: 10px;
        }
        .auto-style3 {
            position: absolute;
            top: 100px;
            left: 10px;
            z-index: 1;
            bottom: 250px;
        }
        .auto-style4 {
            position: absolute;
            top: 130px;
            left: 10px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 161px;
            left: 10px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 193px;
            left: 10px;
            z-index: 1;
            right: 784px;
        }
        .auto-style7 {
            position: absolute;
            top: 223px;
            left: 10px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 256px;
            left: 10px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 287px;
            left: 9px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 318px;
            left: 10px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 353px;
            left: 10px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 386px;
            left: 10px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 69px;
            left: 559px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 98px;
            left: 559px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 128px;
            left: 576px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 158px;
            left: 559px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 191px;
            left: 559px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 221px;
            left: 559px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 253px;
            left: 688px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 284px;
            left: 559px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 316px;
            left: 559px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 349px;
            left: 559px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 384px;
            left: 559px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 258px;
            left: 368px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 255px;
            left: 473px;
            z-index: 1;
            right: 684px;
        }
        .auto-style26 {
            width: 187px;
            height: 133px;
            position: absolute;
            top: 622px;
            left: 455px;
            z-index: 1;
        }
        .auto-style27 {
            margin-left: 40px;
        }
        .auto-style28 {
            position: absolute;
            top: 131px;
            left: 373px;
            z-index: 1;
            right: 824px;
        }
        .auto-style29 {
            position: absolute;
            top: 160px;
            left: 372px;
            z-index: 1;
        }
        .auto-style30 {
            position: absolute;
            top: 318px;
            left: 299px;
            z-index: 1;
            right: 898px;
        }
        .auto-style31 {
            position: absolute;
            top: 352px;
            left: 327px;
            z-index: 1;
        }
        .auto-style32 {
            position: absolute;
            top: 388px;
            left: 438px;
            z-index: 1;
        }
        .auto-style33 {
            width: 187px;
            height: 133px;
            position: absolute;
            top: 885px;
            left: 153px;
            z-index: 1;
        }
        .auto-style34 {
            width: 187px;
            height: 133px;
            position: absolute;
            top: 885px;
            left: 793px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style27">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Font-Size="X-Large" Text="REPORTS FOR ADMIN PANEL"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button8" runat="server" CssClass="auto-style20" Text="View" OnClick="Button8_Click" />
            <br />
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" style="z-index: 1" Text="List of all the registered participants and their information"></asp:Label>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Text="View" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Text="View" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Text="View" OnClick="Button3_Click" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Total amount collected by sponsors for each category"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text="List of the events and their information in specific category"></asp:Label>
            <asp:Button ID="Button4" runat="server" CssClass="auto-style16" Text="View" OnClick="Button4_Click" />
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style28" DataSourceID="CategoryName" DataTextField="categoryName" DataValueField="categoryName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="CategoryName" runat="server" ConnectionString="<%$ ConnectionStrings:localstring %>" SelectCommand="SELECT [categoryName] FROM [Category]"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style29" DataSourceID="CategoryName" DataTextField="categoryName" DataValueField="categoryName">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Text="List of all the Faculty Mentors or of specific
category"></asp:Label>
            <asp:Button ID="Button9" runat="server" CssClass="auto-style21" Text="View" OnClick="Button9_Click" />
            <asp:Button ID="Button10" runat="server" CssClass="auto-style22" Text="View" OnClick="Button10_Click" />
            <asp:Button ID="Button11" runat="server" CssClass="auto-style23" Text="View" OnClick="Button11_Click" />
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text="List of all Student Executives (by event, by category, by managment department)"></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" CssClass="auto-style7" Text="List of sponsors and their information"></asp:Label>
            <asp:Label ID="Label13" runat="server" CssClass="auto-style24" Text="Enter Name"></asp:Label>
            <br />
            <asp:Button ID="Button6" runat="server" CssClass="auto-style18" Text="View" />
            <asp:Button ID="Button7" runat="server" CssClass="auto-style19" OnClick="Button7_Click" Text="View" />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style25"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" CssClass="auto-style8" Text="Search specific participant by name or unique ID"></asp:Label>
            <asp:Button ID="Button5" runat="server" CssClass="auto-style17" Text="View" OnClick="Button5_Click" />
            <br />
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style30" DataSourceID="Date" DataTextField="eventDate" DataValueField="eventDate">
            </asp:DropDownList>
            <asp:SqlDataSource ID="Date" runat="server" ConnectionString="<%$ ConnectionStrings:localstring %>" SelectCommand="SELECT [eventDate] FROM [Events]"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style31" DataSourceID="EventName" DataTextField="eventName" DataValueField="eventName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="EventName" runat="server" ConnectionString="<%$ ConnectionStrings:localstring %>" SelectCommand="SELECT [eventName] FROM [Events]"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="auto-style32" DataSourceID="EventName" DataTextField="eventName" DataValueField="eventName">
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label9" runat="server" CssClass="auto-style9" Text="List of those participants who have registered for food deal"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" CssClass="auto-style10" Text="List of events to be held on specific date"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" CssClass="auto-style11" Text="Total number of registrations in a specific event"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label12" runat="server" CssClass="auto-style12" Text="Name of faculty mentor, event head, and details of a specific event"></asp:Label>
            <br />
            <asp:MultiView ID="MultiView1" runat="server">
                <br />
                <asp:View ID="View1" runat="server">
                    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style26" ForeColor="Black">
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
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </asp:View>
                <br />
                <br />
                <asp:View ID="View2" runat="server">
                    <br />
                    <asp:GridView ID="GridView2" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style33" ForeColor="Black" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
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
                    <asp:GridView ID="GridView3" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" CssClass="auto-style34" ForeColor="Black">
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
                </asp:View>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </asp:MultiView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
