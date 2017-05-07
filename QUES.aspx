<%@ Page Title="" Language="C#" MasterPageFile="~/user2.master" AutoEventWireup="true" CodeFile="QUES.aspx.cs" Inherits="QUES" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 284px">what is the name of file owner</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="27px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 284px">Enter the Attribute of file</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="25px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 284px">Enter&nbsp; the Registered Email id</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="25px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 284px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="Button2" runat="server" Height="33px" OnClick="Button2_Click" Text="VERIFY" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="DECRYPT KEY" Width="97px" Visible="False" />
                            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

