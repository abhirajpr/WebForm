<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestCalenderUC.aspx.cs" Inherits="WebForm.Webforms.TestCalenderUC" %>

<%@ Register Src="~/ReusableViews/CalenderUserControl.ascx" TagPrefix="uc1" TagName="CalenderUserControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:CalenderUserControl runat="server" DisableFutureDates="true" ID="CalenderUserControl"  DisplayText="Date of Birth"/>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onClick="Button1_Click" Text="Click for Date" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>
    </form>
</body>
</html>
