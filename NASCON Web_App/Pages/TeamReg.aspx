<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeamReg.aspx.cs" Inherits="DataBase_SemesterProject.TeamReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 59px;
            left: 466px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 15px;
            left: 10px;
        }
        .auto-style3 {
            position: absolute;
            top: 59px;
            left: 588px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 98px;
            left: 467px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 119px;
            left: 468px;
            z-index: 1;
            width: 199px;
        }
        .auto-style6 {
            position: absolute;
            top: 150px;
            left: 467px;
            z-index: 1;
            height: 19px;
        }
        .auto-style7 {
            position: absolute;
            top: 174px;
            left: 469px;
            z-index: 1;
            width: 198px;
        }
        .auto-style8 {
            position: absolute;
            top: 206px;
            left: 467px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 229px;
            left: 469px;
            z-index: 1;
            width: 195px;
        }
        .auto-style10 {
            position: absolute;
            top: 259px;
            left: 466px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 284px;
            left: 469px;
            z-index: 1;
            width: 200px;
        }
        .auto-style12 {
            position: absolute;
            top: 314px;
            left: 467px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 337px;
            left: 469px;
            z-index: 1;
            width: 199px;
        }
        .auto-style14 {
            position: absolute;
            top: 368px;
            left: 467px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 394px;
            left: 469px;
            z-index: 1;
            width: 198px;
        }
        .auto-style16 {
            position: absolute;
            top: 427px;
            left: 468px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 449px;
            left: 469px;
            z-index: 1;
            width: 199px;
        }
        .auto-style18 {
            position: absolute;
            top: 483px;
            left: 468px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 507px;
            left: 468px;
            z-index: 1;
            width: 197px;
        }
        .auto-style20 {
            position: absolute;
            top: 539px;
            left: 468px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 566px;
            left: 468px;
            z-index: 1;
            width: 199px;
        }
        .auto-style22 {
            position: absolute;
            top: 598px;
            left: 468px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 622px;
            left: 468px;
            z-index: 1;
            width: 199px;
        }
        .auto-style24 {
            position: absolute;
            top: 655px;
            left: 467px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 680px;
            left: 468px;
            z-index: 1;
            width: 200px;
        }
        .auto-style26 {
            position: absolute;
            top: 711px;
            left: 466px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 737px;
            left: 467px;
            z-index: 1;
            width: 203px;
        }
        .auto-style28 {
            position: absolute;
            top: 769px;
            left: 466px;
            z-index: 1;
        }
        .auto-style29 {
            position: absolute;
            top: 796px;
            left: 466px;
            z-index: 1;
            width: 201px;
        }
        .auto-style30 {
            position: absolute;
            top: 829px;
            left: 465px;
            z-index: 1;
        }
        .auto-style31 {
            position: absolute;
            top: 855px;
            left: 466px;
            z-index: 1;
            width: 198px;
        }
        .auto-style32 {
            position: absolute;
            top: 884px;
            left: 464px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 908px;
            left: 465px;
            z-index: 1;
            width: 201px;
        }
        .auto-style34 {
            position: absolute;
            top: 955px;
            left: 465px;
            z-index: 1;
        }
        .auto-style35 {
            position: absolute;
            top: 100px;
            left: 10px;
            z-index: 1;
            width: 354px;
        }
        .auto-style36 {
            position: absolute;
            top: 67px;
            left: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Font-Bold="False" Font-Size="XX-Large" style="z-index: 1" Text="Event Registration"></asp:Label>
        </div>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Event Name"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style3" DataSourceID="EventName" DataTextField="eventName" DataValueField="eventName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="EventName" runat="server" ConnectionString="<%$ ConnectionStrings:projConnectionString %>" SelectCommand="SELECT [eventName] FROM [Events]"></asp:SqlDataSource>
        <asp:Label ID="Label9" runat="server" CssClass="auto-style16" Text="Team Lead Contact"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style15"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" CssClass="auto-style14" Text="Team Lead CNIC"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Team Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5"></asp:TextBox>
        <asp:Label ID="Label18" runat="server" CssClass="auto-style35" Text="1. Select the event you want to register
 &lt;br/&gt; 2. Fill out the one page registration form
 &lt;br/&gt; 3. Print the generated ticket and bring it with you on event day.
 &lt;br/&gt; 4. Present the ticket to finance desk to get participant cards for all participants.
 &lt;br/&gt; 5. Payments can be done at finance desk or before the event (see payment offers after registration)

 &lt;br/&gt;  &lt;br/&gt; 
What to bring on event day:

 &lt;br/&gt; 1. Bring the ticket generated on website as registration proof.
 &lt;br/&gt; 2. It is compulsory to bring a photo proof for identification. Enter CNIC or Institude ID
    Card ( incase Under 18)

 &lt;br/&gt; Note: &lt;br/&gt; 
1. If the participant is under 18, please enter valid institute ID/ Roll # in place of cnic
 &lt;br/&gt; 2. Ambassadors must enter their unique Ambassador ID to make registrations on their behalf.
 &lt;br/&gt; 3. If a participant wants to register in multiple evnets, please choose food &amp; lodging in one event only. Otherwise, fee would be added to each registration."></asp:Label>
        <asp:Label ID="Label19" runat="server" CssClass="auto-style36" Font-Bold="True" Font-Size="Large" ForeColor="#3333CC" style="z-index: 1" Text="Registration Guidelines"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Institute Name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style7"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style8" Text="Ambassador ID"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style9"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style10" Text="Team Lead Name"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style11"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style12" Text="Team Lead Email"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style13"></asp:TextBox>
        <asp:Label ID="Label17" runat="server" CssClass="auto-style32" Text="Member 3 Contact"></asp:Label>
        <asp:TextBox ID="TextBox15" runat="server" CssClass="auto-style33"></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style17"></asp:TextBox>
        <asp:Label ID="Label10" runat="server" CssClass="auto-style18" Text="Member 2 Name"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style19"></asp:TextBox>
        <asp:Label ID="Label11" runat="server" CssClass="auto-style20" Text="Member 2 Email"></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style21"></asp:TextBox>
        <asp:Label ID="Label12" runat="server" CssClass="auto-style22" Text="Member 2 CNIC"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server" CssClass="auto-style23"></asp:TextBox>
        <asp:Label ID="Label13" runat="server" CssClass="auto-style24" Text="Member 2 Contact"></asp:Label>
        <asp:TextBox ID="TextBox11" runat="server" CssClass="auto-style25" OnTextChanged="TextBox11_TextChanged"></asp:TextBox>
        <asp:Label ID="Label14" runat="server" CssClass="auto-style26" Text="Member 3 Name"></asp:Label>
        <asp:TextBox ID="TextBox12" runat="server" CssClass="auto-style27"></asp:TextBox>
        <asp:Label ID="Label15" runat="server" CssClass="auto-style28" Text="Member 3 Email"></asp:Label>
        <asp:TextBox ID="TextBox13" runat="server" CssClass="auto-style29"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style34" Font-Bold="True" Font-Size="Large" ForeColor="#CC3399" OnClick="Button1_Click" Text="REGISTER" />
        <asp:Label ID="Label16" runat="server" CssClass="auto-style30" Text="Member 3 CNIC"></asp:Label>
        <asp:TextBox ID="TextBox14" runat="server" CssClass="auto-style31"></asp:TextBox>
    </form>
</body>
</html>
