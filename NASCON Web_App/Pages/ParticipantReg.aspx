<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ParticipantReg.aspx.cs" Inherits="DataBase_SemesterProject.ParticipantReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 53px;
            left: 486px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 15px;
            left: 10px;
        }
        .auto-style3 {
            position: absolute;
            top: 53px;
            left: 611px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 100px;
            left: 485px;
            right: 709px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 121px;
            left: 485px;
            z-index: 1;
            width: 181px;
        }
        .auto-style6 {
            position: absolute;
            top: 150px;
            left: 485px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 174px;
            left: 485px;
            z-index: 1;
            width: 180px;
        }
        .auto-style8 {
            position: absolute;
            top: 207px;
            left: 485px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 230px;
            left: 486px;
            z-index: 1;
            width: 177px;
        }
        .auto-style10 {
            position: absolute;
            top: 266px;
            left: 486px;
            z-index: 1;
            bottom: 84px;
        }
        .auto-style11 {
            position: absolute;
            top: 289px;
            left: 487px;
            z-index: 1;
            width: 175px;
        }
        .auto-style12 {
            position: absolute;
            top: 324px;
            left: 486px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 385px;
            left: 485px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 409px;
            left: 488px;
            z-index: 1;
            width: 174px;
        }
        .auto-style16 {
            position: absolute;
            top: 504px;
            left: 488px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 449px;
            left: 486px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 448px;
            left: 647px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 350px;
            left: 487px;
            z-index: 1;
            width: 174px;
        }
        .auto-style20 {
            position: absolute;
            top: 100px;
            left: 10px;
            z-index: 1;
            width: 323px;
            height: 440px;
        }
        .auto-style21 {
            position: absolute;
            top: 67px;
            left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Event Name"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Font-Size="XX-Large" style="z-index: 1" Text="Event Registration"></asp:Label>
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style3" DataSourceID="EventNames" DataTextField="eventName" DataValueField="eventName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="EventNames" runat="server" ConnectionString="<%$ ConnectionStrings:projConnectionString %>" SelectCommand="SELECT [eventName] FROM [Events]"></asp:SqlDataSource>
        <asp:Label ID="Label8" runat="server" CssClass="auto-style14" Text="Participant Contact"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style19"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Insititute Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Ambassador Id"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style7"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style8" Text="Participant Name"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style9"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style10" Text="Participant Email"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style11"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style12" Text="Participant CNIC"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style15"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Font-Bold="True" Font-Size="Medium" ForeColor="#660066" OnClick="Button1_Click1" Text="REGISTER" />
        <asp:Label ID="Label10" runat="server" CssClass="auto-style20" Text="1. Select the event you want to register
&lt;br/&gt;2. Fill out the one page registration form
&lt;br/&gt;3. Print the generated ticket and bring it with you on event day.
&lt;br/&gt;4. Present the ticket to finance desk to get participant cards for all participants.
&lt;br/&gt;5. Payments can be done at finance desk or before the event (see payment offers after registration)


&lt;br/&gt;&lt;br/&gt;What to bring on event day:

&lt;br/&gt;1. Bring the ticket generated on website as registration proof.
&lt;br/&gt;2. It is compulsory to bring a photo proof for identification. Enter CNIC or Institude ID
    Card ( incase Under 18)

&lt;br/&gt;Note:&lt;br/&gt;
1. If the participant is under 18, please enter valid institute ID/ Roll # in place of cnic
&lt;br/&gt;2. Ambassadors must enter their unique Ambassador ID to make registrations on their behalf.
&lt;br/&gt;3. If a participant wants to register in multiple evnets, please choose food &amp; lodging in one event only. Otherwise, fee would be added to each registration."></asp:Label>
        <asp:Label ID="Label11" runat="server" CssClass="auto-style21" Font-Bold="True" Font-Size="Large" ForeColor="#3333FF" style="z-index: 1" Text="Registration Guidelines"></asp:Label>
        <asp:Label ID="Label9" runat="server" CssClass="auto-style17" Text="Food Registration"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style18">
            <asp:ListItem>3 burgers, fries, 3 drinks...1200</asp:ListItem>
            <asp:ListItem>4 burgers, fries, 4 drinks...1500</asp:ListItem>
            <asp:ListItem>1 burger, fries, 1 drink...500</asp:ListItem>
        </asp:DropDownList>
    </form>
</body>
</html>
