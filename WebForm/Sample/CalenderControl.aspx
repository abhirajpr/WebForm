<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalenderControl.aspx.cs" Inherits="WebForm.Sample.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 403px">
    <form id="form1" runat="server">
    <div>
    <asp:Table runat="server" Height="16px" Width="148px">
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="label1" runat="server" Text="DoB"></asp:Label>
            </asp:TableCell>
            
            <asp:TableCell>
                <asp:TextBox ID="textbox1" runat="server"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:ImageButton id="imgbutton" runat="server" OnClick="imgbutton_Click" ImageUrl="~/Sample/Images/calendar.png" Width="30px"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
        <asp:Calendar ID="Calendar1" runat="server"  Visible="false" OnSelectionChanged="Calendar1_SelectionChanged" ></asp:Calendar>
    </div>
    </form>
</body>
</html>
