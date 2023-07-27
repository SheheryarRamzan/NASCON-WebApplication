<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            height: 69px;
        }
        .auto-style6 {
            width: 531px;
            text-align: right;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style9 {
            position: absolute;
            left: 554px;
            z-index: 1;
            width: 161px;
        }
        .auto-style10 {
             position: absolute;
    top: 160px;
    left: 553px;
    z-index: 1;
    width: 161px;
        }
        .auto-style11 {
            height: 23px;
            width: 202px;
        }
        .auto-style15 {
            position: absolute;
            left: 620px;
            z-index: 1;
            width: 96px;
            font-weight: bold;
            font-size: small;
        }
        .auto-style17 {
            width: 531px;
            text-align: right;
            height: 2px;
        }
        .auto-style18 {
            height: 2px;
            width: 202px;
        }
        .auto-style19 {
            height: 2px;
        }
        .auto-style20 {
            height: 23px;
            width: 202px;
            margin-left: 40px;
        }
        .auto-style21{
            height: max-content;
    background-color: darkgray;
    width: max-content;
        }
    </style>
</head>
<body class="auto-style21">
    <form id="form1" runat="server">
        <p aria-orientation="horizontal" class="auto-style1">
            <strong>Login Page</strong></p>
        <table class="auto-style2">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style9" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
                    Id:</strong></td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>UserName:</strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style10" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" OnClick="Button1_Click" Text="LogIn" />
                    </strong></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style18"></td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style11"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style6"><strong></strong></td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
