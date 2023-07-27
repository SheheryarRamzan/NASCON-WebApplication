<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyLogin.aspx.cs" Inherits="DataBase_SemesterProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Text1 {
            z-index: 1;
            left: 457px;
            top: 127px;
            position: absolute;
        }
        #Text2 {
            z-index: 1;
            left: 457px;
            top: 177px;
            position: absolute;
        }
        .auto-style1 {
            z-index: 1;
            left: 439px;
            top: 91px;
            position: absolute;
            width: 363px;
            bottom: 243px;
        }
        .auto-style2 {
            z-index: 1;
            left: 596px;
            top: 304px;
            position: absolute;
            width: 78px;
        }
        .auto-style3 {
            z-index: 1;
            left: 607px;
            top: 180px;
            position: absolute;
        }
        .auto-style4 {
            z-index: 1;
            left: 607px;
            top: 219px;
            position: absolute;
        }
        .auto-style5 {
            z-index: 1;
            left: 492px;
            top: 223px;
            position: absolute;
            width: 43px;
            height: 34px;
        }
        .auto-style6 {
            z-index: 1;
            left: 489px;
            top: 181px;
            position: absolute;
            width: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            &nbsp;</p>
        <asp:Label ID="Label2" runat="server" Text="Username" Font-Size="Large" CssClass="auto-style6"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="ID" Font-Size="Large" CssClass="auto-style5"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Faculty Mentor Login Panel" Font-Size="XX-Large" CssClass="auto-style1"></asp:Label>
    <p>
        &nbsp;</p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" Font-Size="Large" OnClick="Button1_Click" Text="LOGIN" CssClass="auto-style2" />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4"></asp:TextBox>
    </form>
    </body>
</html>
