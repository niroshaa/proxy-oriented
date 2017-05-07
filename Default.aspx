<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 503px;
        }
        .auto-style2 {
            width: 99px;
        }
        .auto-style3 {
            height: 73px;
        }
        .auto-style4 {
            width: 439px;
        }
        .auto-style9 {
            width: 137%;
            height: 201px;
        }
        .auto-style19 {
            height: 50px;
            text-align: center;
        }
        .auto-style15 {
            height: 50px;
            text-align: right;
            width: 282px;
        }
        .auto-style16 {
            height: 50px;
            width: 14px;
        }
        .auto-style12 {
            height: 50px;
            width: 308px;
        }
        .auto-style18 {
            text-align: right;
            width: 282px;
        }
        .auto-style17 {
            width: 14px;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style20 {
            width: 308px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700; color: #0033CC" Text="ATTRIBUTE BASED DATA SHARING SCHEME REVISTED IN CLOUD COMPUTING"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <table class="auto-style9">
                        <tr>
                            <td class="auto-style19" colspan="3">
                                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style19" colspan="3">&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" style="text-align: left; font-weight: 700;" Text="LOGIN DETAILS"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">USER TYPE</td>
                            <td class="auto-style16"></td>
                            <td class="auto-style12">
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="43px" Width="185px">
                                    <asp:ListItem>SELECT</asp:ListItem>
                                    <asp:ListItem>CSP</asp:ListItem>
                                    <asp:ListItem>KEY AUTHORITY</asp:ListItem>
                                    <asp:ListItem>DATA OWNER</asp:ListItem>
                                    <asp:ListItem>USER</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">USERNAME</td>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style20">
                                <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="180px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">PASSWORD</td>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style20">
                                <asp:TextBox ID="TextBox2" runat="server" Height="35px" TextMode="Password" Width="180px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14" colspan="3">
                                <br />
                                <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click" style="text-align: left" Text="LOGIN" Width="108px" />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14" colspan="3">
                                <br />
                                <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click"> CLICK HERE TO REGISTER</asp:LinkButton>
                                <br />
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
