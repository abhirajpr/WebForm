<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CalenderUserControl.ascx.cs" Inherits="WebForm.ReusableViews.CalenderUserControl" %>

    
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
        <asp:Calendar ID="Calendar1" runat="server"  Visible="false" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender" ></asp:Calendar>
   
   