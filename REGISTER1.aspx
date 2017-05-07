<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="REGISTER1.aspx.cs" Inherits="REGISTER1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            width: 86%;
            height: 470px;
        }
        .auto-style13 {
            width: 178px;
        }
        .auto-style11 {
            text-align: left;
            height: 12px;
        }
        .auto-style12 {
        width: 391px;
        text-align: right;
    }
        .auto-style14 {
        width: 391px;
        text-align: right;
        height: 4px;
    }
    .auto-style15 {
        left: 0px;
        top: 0px;
        height: 4px;
    }
    .auto-style16 {
        left: 0px;
        top: 17px;
        height: 4px;
    }
    .auto-style18 {
        left: 0px;
        top: 0px;
    }
    .auto-style19 {
        left: 0px;
        top: 17px;
    }
    .auto-style20 {
        width: 391px;
        text-align: right;
        height: 22px;
    }
    .auto-style21 {
        left: 0px;
        top: 0px;
        height: 22px;
    }
    .auto-style22 {
        left: 0px;
        top: 17px;
        height: 22px;
    }
    .auto-style23 {
        width: 391px;
        text-align: right;
        height: 28px;
    }
    .auto-style24 {
        left: 0px;
        top: 0px;
        height: 28px;
    }
    .auto-style25 {
        left: 0px;
        top: 17px;
        height: 28px;
    }
    .auto-style26 {
        width: 391px;
        text-align: right;
        height: 25px;
    }
    .auto-style27 {
        left: 0px;
        top: 0px;
        height: 25px;
    }
    .auto-style28 {
        left: 0px;
        top: 17px;
        height: 25px;
    }
    .auto-style29 {
        width: 391px;
        text-align: right;
        height: 29px;
    }
    .auto-style30 {
        left: 0px;
        top: 0px;
        height: 29px;
    }
    .auto-style31 {
        left: 0px;
        top: 17px;
        height: 29px;
    }
    .auto-style32 {
        width: 391px;
        text-align: right;
        height: 42px;
    }
    .auto-style33 {
        left: 0px;
        top: 0px;
        height: 42px;
    }
    .auto-style34 {
        left: 0px;
        top: 17px;
        height: 42px;
    }
    .auto-style35 {
        width: 391px;
        text-align: right;
        height: 33px;
    }
    .auto-style36 {
        left: 0px;
        top: 0px;
        height: 33px;
    }
    .auto-style37 {
        left: 0px;
        top: 17px;
        height: 33px;
    }
    .auto-style38 {
        right: 45px;
        top: 0;
        width: 0px;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="REGISTER"></asp:Label>
            <table class="auto-style5" style="height: 292px; width: 884px">
                <tr>
                    <td class="auto-style11" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" style="text-align: center" Text="Label" Visible="False"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style12">USRE TYPE</td>
                    <td class="auto-style18"></td>
                    <td class="auto-style19">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="36px" Width="172px">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>DATAOWNER</asp:ListItem>
                            <asp:ListItem>USER</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">ID</td>
                    <td class="auto-style15"></td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox2" runat="server" Height="24px"  Width="172px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">NAME</td>
                    <td class="auto-style21"></td>
                    <td class="auto-style22">
                        <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="172px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">DATE OF BIRTH</td>
                    <td class="auto-style24"></td>
                    <td class="auto-style25">
                        <asp:TextBox ID="TextBox4" runat="server" Height="24px" Width="173px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">GENDER</td>
                    <td class="auto-style18"></td>
                    <td class="auto-style19">&nbsp;&nbsp;
                                <asp:RadioButton ID="RadioButton1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="MALE" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="RadioButton2" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" Text="FEMALE" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26">CONTACT NO</td>
                    <td class="auto-style27"></td>
                    <td class="auto-style28">
                        <asp:TextBox ID="TextBox5" runat="server" Height="24px" Width="172px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29">ADDRESS</td>
                    <td class="auto-style30"></td>
                    <td class="auto-style31">
                        <asp:TextBox ID="TextBox6" runat="server" Height="24px" Width="172px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32">MAIL ID</td>
                    <td class="auto-style33"></td>
                    <td class="auto-style34">
                        <asp:TextBox ID="TextBox7" runat="server" Height="24px"  Width="172px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style35">USER NAME</td>
                    <td class="auto-style36"></td>
                    <td class="auto-style37">
                        <asp:TextBox ID="TextBox8" runat="server" Height="24px" Width="172px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32">PASSWORD</td>
                    <td class="auto-style33"></td>
                    <td class="auto-style34">
                        <asp:TextBox ID="TextBox9" runat="server" Height="24px" TextMode="Password" Width="172px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click" style="text-align: right" Text="REGISTER" Width="110px" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

