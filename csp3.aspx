<%@ Page Title="" Language="C#" MasterPageFile="~/CSP2.master" AutoEventWireup="true" CodeFile="csp3.aspx.cs" Inherits="csp3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style10"></td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True"  BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"  Width="556px" Height="210px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged1" >
                
                <SortedAscendingCellStyle BackColor="" />
                <SortedAscendingHeaderStyle BackColor="" />
                <SortedDescendingCellStyle BackColor="" />
                <SortedDescendingHeaderStyle BackColor="" />
                <Columns>
                    <asp:BoundField DataField="user_id" HeaderText="USER ID" />
                    <asp:BoundField DataField="file_id" HeaderText="FILE ID" />
                    <asp:BoundField DataField="filename" HeaderText="FILE NAME" />
                    <asp:BoundField DataField="filesize" HeaderText="FILE SIZE" />
                    <asp:BoundField DataField="name" HeaderText="USER NAME" />
                    <asp:BoundField DataField="attribute" HeaderText="ATTRIBUTE" />
                </Columns>
            </asp:GridView>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br /></td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

