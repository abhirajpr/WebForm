<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMail.aspx.cs" Inherits="WebForm.SendMail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 340px;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 143px;
        }
        .auto-style4 {
            width: 143px;
            height: 44px;
        }
        .auto-style5 {
            height: 44px;
        }
        .auto-style6 {
            width: 143px;
            height: 37px;
        }
        .auto-style7 {
            height: 37px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Send Mail"></asp:Label>
        <br />
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Text="To"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" Height="18px" Width="168px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Message"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="155px" TextMode="MultiLine" Width="329px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

