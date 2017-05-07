<%@ Page Language="C#" AutoEventWireup="true" CodeFile="REGISTER.aspx.cs" Inherits="REGISTER" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 565px;
        }
        .auto-style2 {
            height: 67px;
        }
        .auto-style3 {
            width: 487px;
        }
        .auto-style5 {
            width: 88%;
        }
        .auto-style11 {
            text-align: left;
            height: 42px;
        }
        .auto-style12 {
            width: 1151px;
            text-align: right;
        }
        .auto-style6 {
            width: 261px;
            text-align: right;
        }
        .auto-style8 {
            width: 313px;
        }
        .auto-style9 {
            height: 57px;
        }
        .auto-style13 {
            width: 178px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="REGISTER"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style3">
                    <table class="auto-style5">
                        <tr>
                            <td class="auto-style11" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label2" runat="server" style="text-align: center" Text="Label" Visible="False"></asp:Label>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">USRE TYPE</td>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style8">
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="43px" Width="180px">
                                    <asp:ListItem>SELECT</asp:ListItem>
                                    <asp:ListItem>DATAOWNER</asp:ListItem>
                                    <asp:ListItem>USER</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">ID</td>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox2" runat="server" Height="24px"  Width="172px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">NAME</td>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="172px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">DATE OF BIRTH</td>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox4" runat="server" Height="24px" Width="173px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">GENDER</td>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style8">&nbsp;&nbsp;
                                <asp:RadioButton ID="RadioButton1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="MALE" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="RadioButton2" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" Text="FEMALE" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">CONTACT NO</td>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox5" runat="server" Height="24px" Width="172px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">ADDRESS</td>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox6" runat="server" Height="24px" Width="172px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">MAIL ID</td>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox7" runat="server" Height="24px"  Width="172px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">USER NAME</td>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox8" runat="server" Height="24px" Width="172px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">PASSWORD</td>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="TextBox9" runat="server" Height="24px" TextMode="Password" Width="172px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click" style="text-align: right" Text="REGISTER" Width="110px" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
