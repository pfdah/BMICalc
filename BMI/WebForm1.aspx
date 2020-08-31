<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BMI.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1> BMI Calculator </h1>
    <form id="form1" runat="server">
        <div style="margin-left: 3px; height: 375px; margin-top: 0px;">
            Please enter the details in :<br />
            Metric System (kgs and metres).<br />
            Imeperial System (lbs and inches).<br />
&nbsp;<br />
            &nbsp;<asp:RadioButtonList ID="Measure" runat="server">
                <asp:ListItem Selected="True">Metric</asp:ListItem>
                <asp:ListItem>Imperial</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Mass"></asp:Label>
            <asp:TextBox ID="mass" runat="server" style="margin-left: 36px" Width="48px" Height="16px"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="kgs/lbs"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Height"></asp:Label>
            <asp:TextBox ID="height" runat="server" style="margin-left: 30px" Width="44px"></asp:TextBox>
            &nbsp;
            <asp:Label ID="Label5" runat="server" Text="metres/inches"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btn_clr" runat="server" OnClick="btn_clr_Click" Text="Clear" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_calc" runat="server" OnClick="btn_calc_Click" Text="Calculate" style="height: 26px" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="BMI"></asp:Label>
&nbsp;
            :<br />
            <asp:TextBox ID="result" runat="server" style="margin-left: 2px" Width="94px"></asp:TextBox>
        </div>
    </form>
</body>
</html>
