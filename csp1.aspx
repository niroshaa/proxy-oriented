<%@ Page Title="" Language="C#" MasterPageFile="~/CSP2.master" AutoEventWireup="true" CodeFile="csp1.aspx.cs" Inherits="csp1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>
            <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="DATAOWNER DETAILS"></asp:Label>
            <br />
            <br /></td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True"  BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"  Width="528px">
                
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" />
                    <asp:BoundField DataField="NAME" HeaderText="DATAOWNER NAME" />
                    <asp:BoundField DataField="DOB" HeaderText="DATE OF BIRTH" />
                    <asp:BoundField DataField="CONTACTNO" HeaderText="CONTACT NO" />
                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" />
                    <asp:BoundField DataField="MAIL_ID" HeaderText="MAIL ID" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

