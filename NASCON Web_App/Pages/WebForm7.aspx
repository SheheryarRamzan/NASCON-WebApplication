<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="DataBase_SemesterProject.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 12px;
            left: 273px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 49px;
            left: 10px;
            z-index: 1;
            width: 383px;
        }
        .auto-style3 {
            position: absolute;
            top: 76px;
            left: 10px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 101px;
            left: 10px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 127px;
            left: 10px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 154px;
            left: 10px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 182px;
            left: 10px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 211px;
            left: 10px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 239px;
            left: 10px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 46px;
            left: 499px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 235px;
            left: 541px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 207px;
            left: 541px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 180px;
            left: 499px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 152px;
            left: 499px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 126px;
            left: 639px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 99px;
            left: 499px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 73px;
            left: 499px;
            z-index: 1;
        }
        .auto-style19 {
            width: 187px;
            height: 133px;
            position: absolute;
            top: 487px;
            left: 296px;
            z-index: 1;
        }
        .auto-style20 {
            width: 187px;
            height: 133px;
            position: absolute;
            top: 348px;
            left: 132px;
            z-index: 1;
        }
        .auto-style21 {
            width: 187px;
            height: 133px;
            position: absolute;
            top: 349px;
            left: 736px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 129px;
            left: 364px;
            z-index: 1;
            right: 848px;
        }
        .auto-style23 {
            position: absolute;
            top: 127px;
            left: 455px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 181px;
            left: 295px;
            z-index: 1;
            right: 902px;
        }
        .auto-style25 {
            position: absolute;
            top: 209px;
            left: 341px;
            z-index: 1;
            right: 856px;
        }
        .auto-style26 {
            position: absolute;
            top: 238px;
            left: 420px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Font-Size="X-Large" Text="REPORTS FOR FACULTY MENTOR"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" CssClass="auto-style22" Text="Enter Name "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style23"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style24" DataSourceID="Date" DataTextField="eventDate" DataValueField="eventDate">
            </asp:DropDownList>
            <asp:SqlDataSource ID="Date" runat="server" ConnectionString="<%$ ConnectionStrings:localstring %>" SelectCommand="SELECT [eventDate] FROM [Events]" ProviderName="<%$ ConnectionStrings:localstring.ProviderName %>"></asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style25" DataSourceID="EventName" DataTextField="eventName" DataValueField="eventName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="EventName" runat="server" ConnectionString="<%$ ConnectionStrings:localstring %>" SelectCommand="SELECT [eventName] FROM [Events]" ProviderName="<%$ ConnectionStrings:localstring.ProviderName %>"></asp:SqlDataSource>
            <br />
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style26" DataSourceID="EventName" DataTextField="eventName" DataValueField="eventName">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <br />
            <asp:MultiView ID="MultiView1" runat="server">
                <br />
                <asp:View ID="View3" runat="server">
                    <br />
                    <asp:GridView ID="GridView3" runat="server" CssClass="auto-style20" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
                    <asp:GridView ID="GridView4" runat="server" CssClass="auto-style21" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
                </asp:View>
                <br />
                <asp:View ID="View2" runat="server">
                    <br />
                    <asp:GridView ID="GridView2" runat="server" CssClass="auto-style19" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
                </asp:View>
                <br />
                <br />
                <br />
                <br />
            </asp:MultiView>
        </div>
        <br />
        <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="List of all the registered participants and their information"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="List of the events and their information in specific category"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text="List of all Student Executives (by event, by category, by managment department)"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Text="Search specific participant by name or unique Id"></asp:Label>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text="List of those participants who have registered for a food deal"></asp:Label>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style7" Text="List of events to be held on specific date"></asp:Label>
        <asp:Label ID="Label8" runat="server" CssClass="auto-style8" Text="Total number of registrations in a specific event"></asp:Label>
        <asp:Label ID="Label9" runat="server" CssClass="auto-style9" Text="Name of faculty mentor, event head, and details of specifc event"></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Text="View" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" CssClass="auto-style17" Text="View" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Text="View" OnClick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Text="View" OnClick="Button4_Click" />
        <asp:Button ID="Button5" runat="server" CssClass="auto-style10" OnClick="Button5_Click" Text="View" />
        <asp:Button ID="Button6" runat="server" CssClass="auto-style12" Text="View" OnClick="Button6_Click" />
        <asp:Button ID="Button7" runat="server" CssClass="auto-style16" OnClick="Button7_Click" Text="View" />
        <asp:Button ID="Button8" runat="server" CssClass="auto-style11" Text="View" OnClick="Button8_Click" />
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
