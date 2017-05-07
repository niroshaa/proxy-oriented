<%@ Page Title="" Language="C#" MasterPageFile="~/CSP2.master" AutoEventWireup="true" CodeFile="csp2.aspx.cs" Inherits="csp2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style10">
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="FILE DETAILS" style="font-weight: 700; text-decoration: underline"></asp:Label>
            <br /></td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"  Width="528px">
                
                <SortedAscendingCellStyle BackColor="" />
                <SortedAscendingHeaderStyle BackColor="" />
                <SortedDescendingCellStyle BackColor="" />
               
                <Columns>
                    <asp:BoundField DataField="FILE_ID" HeaderText="FILE ID" />
                    <asp:BoundField DataField="D_NAME" HeaderText="DATAOWNER NAME" />
                    <asp:BoundField DataField="FILENAME" HeaderText="FILENAME" />
                    <asp:BoundField DataField="FILEPATH" HeaderText="FILE PATH" />
                    <asp:BoundField DataField="FILESIZE" HeaderText="FILE SIZE" />
                    <asp:BoundField DataField="DATE_TIME" HeaderText="DATE TIME" />
                    <asp:BoundField DataField="KEY1" HeaderText="KEY" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

