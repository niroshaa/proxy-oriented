<%@ Page Title="" Language="C#" MasterPageFile="~/DATA.master" AutoEventWireup="true" CodeFile="data1.aspx.cs" Inherits="data1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>    <table class="auto-style22">
        <tr>
            <td class="auto-style23" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" style="text-decoration: underline" Text="FILE UPLOAD"></asp:Label>
                <br />
                <br />
            </td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style23" rowspan="11" style="width: 268435552px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" style="text-align: right;">FILE ID</td>
            <td class="auto-style55" style="height: 37px; width: 80px;">
                <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="157px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:Button ID="Button7" runat="server" Height="31px" OnClick="Button7_Click" Text="SEARCH" Width="111px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14" style="text-align: right;">OWNER NAME</td>
            <td class="auto-style44" style="height: 41px; width: 80px;">
                <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="156px"></asp:TextBox>
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style15" style="text-align: right; height: 45px;">FILE NAME</td>
            <td style="width: 80px; height: 45px;">
                <asp:TextBox ID="TextBox3" runat="server" Height="24px" style="margin-left: 0px; margin-top: 0px;" Width="154px"></asp:TextBox>
            </td>
            <td class="auto-style9" style="height: 45px"></td>
        </tr>
        <tr>
            <td class="auto-style16" style="text-align: right; height: 50px;">CHOOSE FILE</td>
            <td class="auto-style47" style="height: 50px; width: 80px;">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="27px" Width="234px" />
            </td>
            <td class="auto-style12" style="height: 50px">
                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="ENCRYPT" Width="76px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="text-align: right;">&nbsp;</td>
            <td style="width: 80px">
                <asp:TextBox ID="TextBox7" runat="server" Height="28px"  Width="153px" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style15" style="text-align: right;">&nbsp;&nbsp;</td>
            <td style="width: 80px">
                <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="SUBMIT" Width="100px" />
                <asp:TextBox ID="TextBox4" runat="server" Height="33px" Width="154px" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15" style="text-align: right;">&nbsp; </td>
            <td style="width: 80px">
                <asp:TextBox ID="TextBox5" runat="server" Height="33px" Width="153px" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="text-align: right;">&nbsp;&nbsp;</td>
            <td style="width: 80px">
                <asp:TextBox ID="TextBox6" runat="server" Height="33px" Width="152px" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 80px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="2">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
    </table>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

