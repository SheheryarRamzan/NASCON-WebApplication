<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="DataBase_SemesterProject.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 583px;
            left: 495px;
            z-index: 1;
        }
        .auto-style2 {
            z-index: 1;
            left: 494px;
            top: 644px;
            position: absolute;
        }
        .auto-style3 {
            position: absolute;
            top: 72px;
            left: 717px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 72px;
            z-index: 1;
            height: 26px;
            left: 860px;
            width: 84px;
            bottom: 271px;
        }
        .auto-style5 {
            z-index: 1;
            left: 357px;
            top: 46px;
            position: absolute;
        }
        .auto-style6 {
            z-index: 1;
            left: 443px;
            top: 13px;
            position: absolute;
        }
        .auto-style7 {
            z-index: 1;
            left: 47px;
            top: 128px;
            position: absolute;
        }
        .auto-style8 {
            z-index: 1;
            left: 47px;
            top: 99px;
            position: absolute;
        }
        .auto-style9 {
            z-index: 1;
            left: 46px;
            top: 72px;
            position: absolute;
            right: 842px;
        }
        .auto-style10 {
            z-index: 1;
            left: 462px;
            top: 70px;
            position: absolute;
            width: 49px;
        }
        .auto-style11 {
            z-index: 1;
            left: 396px;
            top: 96px;
            position: absolute;
            right: 852px;
        }
        .auto-style12 {
            z-index: 1;
            left: 495px;
            top: 529px;
            position: absolute;
        }
        .auto-style13 {
            z-index: 1;
            left: 494px;
            top: 617px;
            position: absolute;
        }
        .auto-style14 {
            z-index: 1;
            left: 429px;
            top: 429px;
            position: absolute;
        }
        .auto-style15 {
            z-index: 1;
            left: 455px;
            top: 461px;
            position: absolute;
            width: 81px;
        }
        .auto-style16 {
            z-index: 1;
            left: 515px;
            top: 673px;
            position: absolute;
            height: 26px;
        }
        .auto-style17 {
            z-index: 1;
            left: 371px;
            top: 193px;
            position: absolute;
            height: 133px;
            width: 187px;
        }
        .auto-style18 {
            z-index: 1;
            left: 464px;
            top: 846px;
            position: absolute;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label4" runat="server" Text="Welcome To Faculty Mentor Portal" Font-Size="X-Large" CssClass="auto-style6"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label13" runat="server" Font-Size="Large" style="z-index: 1; left: 45px; top: 48px; position: absolute" Text="View The Details of Student Executives"></asp:Label>
            <br />
            <asp:Label ID="Label17" runat="server" CssClass="auto-style3" Font-Size="X-Large" Text="View Reports"></asp:Label>
            <asp:Button ID="Button12" runat="server" CssClass="auto-style4" OnClick="Button12_Click" Text="View" />
            <br />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Edit" CssClass="auto-style11" />
            <br />
            <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" style="z-index: 1; left: 492px; top: 127px; position: absolute" Text="Delete" />
            <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="View" CssClass="auto-style5" />
            <br />
            <br />
            <asp:MultiView ID="MultiView1" runat="server">
                <br />
                <asp:View ID="View1" runat="server">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style17" ForeColor="Black" GridLines="Horizontal">
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
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
                <asp:View ID="View2" runat="server">
                    <br />
                    <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 368px; top: 399px; position: absolute" Text="Time"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 429px; top: 398px; position: absolute"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 368px; top: 434px; position: absolute" Text="Venue"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style14"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button4" runat="server" Text="Edit" OnClick="Button4_Click1" CssClass="auto-style15" />
                    <br />
                    <br />
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <br />
                    <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 371px; top: 531px; position: absolute; height: 21px;" Text="Student ID"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style12"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 495px; top: 557px; position: absolute"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 371px; top: 559px; position: absolute" Text="Student Name"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style1">
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
                    <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 372px; top: 615px; position: absolute; height: 22px;" Text="Batch"></asp:Label>
                    <br />
                    <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 373px; top: 585px; position: absolute" Text="Position"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Modify" CssClass="auto-style16" />
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style13"></asp:TextBox>
                    <asp:Label ID="Label16" runat="server" style="z-index: 1; left: 371px; top: 643px; position: absolute" Text="Event Assigned"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Events" DataTextField="eventName" DataValueField="eventName" style="height: 22px;" CssClass="auto-style2">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Events" runat="server" ConnectionString="<%$ ConnectionStrings:localstring %>" SelectCommand="SELECT [eventName] FROM [Events]" ProviderName="<%$ ConnectionStrings:localstring.ProviderName %>"></asp:SqlDataSource>
                    <br />
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" style="z-index: 1; left: 428px; top: 673px; position: absolute" Text="Add" />
                </asp:View>
                <br />
                <asp:View ID="View4" runat="server">
                    <asp:Label ID="Label15" runat="server" Font-Size="Large" style="z-index: 1; left: 370px; top: 758px; position: absolute" Text="Delete A Student Executive"></asp:Label>
                    <br />
                    <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 374px; top: 800px; position: absolute" Text="Student Id"></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" style="z-index: 1; left: 461px; top: 797px; position: absolute"></asp:TextBox>
                    <br />+
                    <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Delete" CssClass="auto-style18" />
                    <br />
                    <br />
                </asp:View>
                <br />
                <asp:View ID="View5" runat="server">
                    <br />
                    <asp:GridView ID="GridView2" runat="server" style="z-index: 1; left: 260px; top: 907px; position: absolute; height: 133px; width: 187px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                    <br />
                    <asp:GridView ID="GridView3" runat="server" style="z-index: 1; left: 500px; top: 908px; position: absolute; height: 133px; width: 187px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                </asp:View>
                <br />
                <br />
                <br />
            </asp:MultiView>
        </div>
        <asp:Label ID="Label1" runat="server" Text="View Event And Participants Registered In Your Event" Font-Size="Large" CssClass="auto-style9"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="margin-top: 0px" Text="Edit Time And Venue For Event" Font-Size="Large" CssClass="auto-style8"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Add Delete Or Modify Student Executives" Font-Size="Large" CssClass="auto-style7"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="View" CssClass="auto-style10" />
        <asp:Button ID="Button3" runat="server" style="z-index: 1; left: 397px; top: 127px; position: absolute; width: 81px" Text="Add/Modify" OnClick="Button3_Click" />
    </form>
</body>
</html>
