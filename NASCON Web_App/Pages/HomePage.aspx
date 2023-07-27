<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="DataBase_SemesterProject.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1261px;
            height: 344px;
            margin-left: 33px;
        }
        .auto-style2 {
            position: absolute;
            top: 419px;
            left: 84px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 416px;
            left: 444px;
            z-index: 1;
            width: 165px;
        }
        .auto-style4 {
            position: absolute;
            top: 416px;
            left: 758px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 492px;
            left: 79px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 489px;
            left: 335px;
            z-index: 1;
            width: 211px;
        }
        .auto-style7 {
            position: absolute;
            top: 489px;
            left: 729px;
            z-index: 1;
            right: 451px;
        }
        .auto-style8 {
            position: absolute;
            top: 489px;
            left: 998px;
            z-index: 1;
            width: 142px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="nascon.png" class="auto-style1"/><asp:Button ID="Button2" runat="server" CssClass="auto-style4" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue" OnClick="Button2_Click" Text="FACULTY MENTOR" />
&nbsp;<asp:Button ID="Button5" runat="server" CssClass="auto-style8" Font-Bold="True" Font-Size="X-Large" ForeColor="#3333CC" OnClick="Button5_Click" Text="SPONSOR" />
        </div>
    <p>
        &nbsp;</p>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#CC0000" Text="LOGIN "></asp:Label>
    <p>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Font-Bold="True" Font-Size="X-Large" ForeColor="#3333CC" OnClick="Button1_Click" Text="ADMIN" />
        <asp:Button ID="Button4" runat="server" CssClass="auto-style7" Font-Bold="True" Font-Size="X-Large" ForeColor="#3333CC" Text="TEAM" OnClick="Button4_Click" />
        <asp:Button ID="Button3" runat="server" CssClass="auto-style6" Font-Bold="True" Font-Size="X-Large" ForeColor="#3333CC" Text="PARTICIPANT" OnClick="Button3_Click" />
        </p>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#CC0000" Text="REGISTER"></asp:Label>
    </form>
    </body>
</html>
