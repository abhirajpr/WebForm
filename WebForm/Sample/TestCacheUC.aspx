<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestCacheUC.aspx.cs" Inherits="WebForm.Sample.TestCacheUC" %>

<%@ Register Src="~/ReusableViews/CachingUserControl.ascx" TagPrefix="uc1" TagName="CachingUserControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:panel runat="server" GroupingText="Caching User Control" >
        <uc1:CachingUserControl runat="server" ID="CachingUserControl" />
            </asp:panel>
     Server Time: <asp:Label ID="Label1" runat="server"></asp:Label><br />
        Client Time:<script type="text/javascript">
            document.write(Date());
        </script>
    </div>
    </form>
</body>
</html>
