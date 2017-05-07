<%@ Page Title="" Language="C#" MasterPageFile="~/DATA.master" AutoEventWireup="true" CodeFile="data.aspx.cs" Inherits="data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style6" style="width: 513px; height: 121px">
        <tr>
            <td class="auto-style8" colspan="2">
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" style="text-align: center; text-decoration: underline" Text="KEY DETAILS"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="width: 149px">FILE ID</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10" style="width: 149px">FILE NAME</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="150px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="width: 149px">DATAOWNER NAME</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="150px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" style="width: 149px">ATTRIBUTE</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="152px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="KEY" Width="90px" Height="32px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="width: 149px; height: 13px">KEY</td>
            <td style="height: 13px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2" style="height: 45px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="text-align: left; margin-left: 0px" Text="SUBMIT" Width="135px" Height="40px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
    </table>
</asp:Content>

