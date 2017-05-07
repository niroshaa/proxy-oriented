<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="homedata.aspx.cs" Inherits="homedata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style11 {
        width: 100%;
        height: 311px;
    }
    .auto-style12 {
        width: 272px;
    }
    .auto-style13 {
        width: 330px;
    }
    .auto-style15 {
        width: 333px;
    }
    .auto-style16 {
        width: 327px;
            height: 70px;
        }
        .auto-style17 {
            width: 272px;
            height: 62px;
        }
        .auto-style18 {
            width: 327px;
            height: 62px;
        }
        .auto-style19 {
            width: 272px;
            height: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style11">
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style13">
            <table class="auto-style15">
                <tr>
                    <td colspan="2"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" style="text-align: left; font-weight: 700;" Text="LOGIN DETAILS"></asp:Label>
                        <br />
                        </span></td>
                </tr>
                <tr>
                    <td class="auto-style17">USER NAME</td>
                    <td class="auto-style18">
                        <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="135px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">PASSWORD</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="138px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LOGIN" />
&nbsp;<br />
                    </td>
                </tr>
            </table>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

