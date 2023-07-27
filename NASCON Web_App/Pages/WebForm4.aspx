<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="DataBase_SemesterProject.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            z-index: 1;
            left: 451px;
            top: 307px;
            position: absolute;
        }
        .auto-style2 {
            position: absolute;
            top: 610px;
            left: 420px;
            z-index: 1;
        }
        .auto-style3 {
            z-index: 1;
            left: 320px;
            top: 555px;
            position: absolute;
            right: 895px;
        }
        .auto-style4 {
            z-index: 1;
            left: 420px;
            top: 552px;
            position: absolute;
        }
        .auto-style5 {
            position: absolute;
            top: 83px;
            left: 637px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 84px;
            left: 775px;
            right: 468px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 295px; top: 14px; position: absolute" Text="WELCOME TO FACULTY MENTOR PORTAL"></asp:Label>
        </div>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 10px; top: 42px; position: absolute; height: 19px" Text="View All Event Details And Registrations of Events Under Category"></asp:Label>
        <asp:Label ID="Label14" runat="server" CssClass="auto-style5" Font-Size="X-Large" Text="View Reports"></asp:Label>
        <p>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 9px; top: 75px; position: absolute" Text="Edit Time And Venue of Events"></asp:Label>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 469px; top: 41px; position: absolute" Text="View" />
            <asp:Button ID="Button2" runat="server" style="z-index: 1; left: 237px; top: 71px; position: absolute" Text="Edit" OnClick="Button2_Click" />
        </p>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 10px; top: 109px; position: absolute" Text="Add, Delete Or Modify Student Executive"></asp:Label>
        <asp:Button ID="Button10" runat="server" CssClass="auto-style6" OnClick="Button10_Click" Text="View" />
        <p>
            <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 10px; top: 144px; position: absolute" Text="View Details Student Executives"></asp:Label>
        </p>
        <asp:Button ID="Button3" runat="server" style="z-index: 1; left: 285px; top: 105px; position: absolute" Text="Add/Modify" OnClick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" style="z-index: 1; left: 407px; top: 105px; position: absolute" Text="Delete" OnClick="Button4_Click" />
        <asp:Button ID="Button5" runat="server" style="z-index: 1; left: 233px; top: 140px; position: absolute" Text="View" OnClick="Button5_Click" />
        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <br />
            <asp:View ID="View1" runat="server">
                <br />
                <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 409px; top: 246px; position: absolute"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 320px; top: 246px; position: absolute" Text="Time"></asp:Label>
                <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 319px; top: 280px; position: absolute" Text="Venue"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 409px; top: 280px; position: absolute"></asp:TextBox>
                <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 101px; top: 262px; position: absolute" DataSourceID="EventNames" DataTextField="eventName" DataValueField="eventName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="EventNames" runat="server" ConnectionString="<%$ ConnectionStrings:localstring %>" SelectCommand="SELECT [eventName] FROM [Events]"></asp:SqlDataSource>
                <br />
                <br />
                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" style="height: 26px;" Text="Edit" CssClass="auto-style1" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <br />
                <asp:GridView ID="GridView1" runat="server" style="z-index: 1; left: 360px; top: 375px; position: absolute; height: 133px; width: 187px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
            </asp:View>
            <br />
            <asp:View ID="View3" runat="server">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style4"></asp:TextBox>
                <br />
                <asp:Label ID="Label8" runat="server" Text="Student Id" CssClass="auto-style3"></asp:Label>
                <br />
                <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 298px; top: 581px; position: absolute" Text="Student Name"></asp:Label>
                <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 336px; top: 610px; position: absolute" Text="Position"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 420px; top: 583px; position: absolute"></asp:TextBox>
                <br />
                <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 348px; top: 640px; position: absolute; right: 548px" Text="Batch"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style2">
                    <asp:ListItem>President</asp:ListItem>
                    <asp:ListItem>Vice President</asp:ListItem>
                    <asp:ListItem>Secretary</asp:ListItem>
                    <asp:ListItem>Event Head</asp:ListItem>
                    <asp:ListItem>Head Sponsorship</asp:ListItem>
                    <asp:ListItem>Operations Head</asp:ListItem>
                    <asp:ListItem>Logistics Head</asp:ListItem>
                    <asp:ListItem>Operation Member</asp:ListItem>
                    <asp:ListItem>Sponsorship Member</asp:ListItem>
                    <asp:ListItem>Logistics Member</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:TextBox ID="TextBox6" runat="server" style="z-index: 1; left: 420px; top: 642px; position: absolute"></asp:TextBox>
                <br />
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" style="z-index: 1; left: 401px; top: 706px; position: absolute; height: 26px;" Text="Add" />
                <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" style="z-index: 1; left: 473px; top: 705px; position: absolute" Text="Modify" />
                <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 289px; top: 670px; position: absolute" Text="Event Assigned"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Events" DataTextField="eventName" DataValueField="eventName" style="z-index: 1; left: 419px; top: 669px; position: absolute">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Events" runat="server" ConnectionString="<%$ ConnectionStrings:localstring %>" SelectCommand="SELECT [eventName] FROM [Events]" ProviderName="<%$ ConnectionStrings:localstring.ProviderName %>"></asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
            </asp:View>
            <br />
            <asp:View ID="View4" runat="server">
                <br />
                <asp:TextBox ID="TextBox7" runat="server" style="z-index: 1; left: 425px; top: 847px; position: absolute"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 329px; top: 845px; position: absolute; right: 876px" Text="Student Id"></asp:Label>
                <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" style="z-index: 1; left: 437px; top: 876px; position: absolute" Text="Delete" />
            </asp:View>
            <asp:View ID="View5" runat="server">
                <br />
                <asp:GridView ID="GridView2" runat="server" style="z-index: 1; left: 264px; top: 949px; position: absolute; height: 133px; width: 187px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
                <asp:GridView ID="GridView3" runat="server" style="z-index: 1; left: 543px; top: 949px; position: absolute; height: 133px; width: 187px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
            </asp:View>
            <br />
            <br />
        </asp:MultiView>
    </form>
</body>
</html>
