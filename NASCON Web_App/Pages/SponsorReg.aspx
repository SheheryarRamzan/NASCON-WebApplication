<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SponsorReg.aspx.cs" Inherits="DataBase_SemesterProject.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            z-index: 1;
            left: 643px;
            top: 263px;
            position: absolute;
        }
        .auto-style2 {
            z-index: 1;
            left: 409px;
            top: 13px;
            position: absolute;
        }
        .auto-style3 {
            z-index: 1;
            left: 528px;
            top: 325px;
            position: absolute;
            width: 158px;
        }
        .auto-style4 {
            z-index: 1;
            left: 430px;
            top: 264px;
            position: absolute;
            right: 741px;
        }
        .auto-style5 {
            z-index: 1;
            left: 615px;
            top: 194px;
            position: absolute;
        }
        .auto-style6 {
            z-index: 1;
            left: 615px;
            top: 162px;
            position: absolute;
        }
        .auto-style7 {
            z-index: 1;
            left: 615px;
            top: 127px;
            position: absolute;
        }
        .auto-style8 {
            z-index: 1;
            left: 614px;
            top: 95px;
            position: absolute;
        }
        .auto-style9 {
            z-index: 1;
            left: 425px;
            top: 97px;
            position: absolute;
        }
        .auto-style10 {
            z-index: 1;
            left: 424px;
            top: 130px;
            position: absolute;
        }
        .auto-style11 {
            z-index: 1;
            left: 424px;
            top: 165px;
            position: absolute;
        }
        .auto-style12 {
            z-index: 1;
            left: 424px;
            top: 197px;
            position: absolute;
            bottom: 153px;
            right: 822px;
        }
        .auto-style13 {
            position: absolute;
            top: 242px;
            left: 642px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 242px;
            left: 429px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Registration Form For Sponsors" CssClass="auto-style2"></asp:Label>
        </div>
        <asp:Label ID="Label2" runat="server" Text="Name of Representative " CssClass="auto-style11"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Name of Company" CssClass="auto-style10"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="CNIC" CssClass="auto-style12"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style4">
            <asp:ListItem>Silver...60000</asp:ListItem>
            <asp:ListItem>Gold...100000</asp:ListItem>
            <asp:ListItem>Bronze...25000</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style6"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" CssClass="auto-style3" />
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Category" DataTextField="categoryName" DataValueField="categoryName" CssClass="auto-style1">
        </asp:DropDownList>
        <asp:SqlDataSource ID="Category" runat="server" ConnectionString="<%$ ConnectionStrings:projConnectionString %>" SelectCommand="SELECT [categoryName] FROM [Category]"></asp:SqlDataSource>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style14" Text="Select Package"></asp:Label>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style13" Text="Select Category"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style8"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="Sponsor Id" CssClass="auto-style9"></asp:Label>
    </form>
</body>
</html>
