<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Info_StuResult.aspx.cs" Inherits="QianUser_Info_StuResult" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 11px;
            height: 16px;
        }
        .style2
        {
            width: 223px;
            height: 16px;
        }
        .style3
        {
            width: 179px;
            height: 16px;
        }
        .style4
        {
            height: 16px;
        }
        .style5
        {
            width: 2px;
            height: 16px;
        }
        .style6
        {
            width: 11px;
            height: 33px;
        }
        .style7
        {
            height: 33px;
        }
        .style8
        {
            height: 61px;
            width: 89px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table style="background-image: url(../igm/成绩查询1.jpg); width: 797px; height: 604px">
                    <tr>
                        <td align="center" colspan="1" style="width: 11px; height: 23px">
                        </td>
                        <td align="center" colspan="2" style="width: 223px; height: 23px">
                            &nbsp;</td>
                        <td align="center" colspan="1" style="width: 179px; height: 23px">
                        </td>
                        <td align="center" colspan="1" style="height: 23px">
                        </td>
                        <td align="center" colspan="1" style="width: 2px; height: 23px">
                        </td>
                        <td align="center" colspan="1" style="height: 23px">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="1" style="width: 11px; height: 63px">
                        </td>
                        <td align="center" colspan="2" style="width: 223px; height: 63px">
                        </td>
                        <td align="center" colspan="1" style="width: 179px; height: 63px">
                            <br />
                        </td>
                        <td align="left" colspan="1" style="vertical-align: top; height: 63px">
                            <"table id="TABLE1" <%--onclick="return TABLE1_onclick()"--%>>
                                <tr>
                                    <td align="center" style="vertical-align: middle; width: 91px; height: 61px; text-align: center">
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/igm/考试规则_03.jpg" OnClick="ImageButton1_Click" Height="85px" /></td>
                                    <td align="center" style="vertical-align: middle; text-align: center" 
                                        class="style8">
                                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/igm/考试规则_05.jpg"
                                            OnClick="ImageButton2_Click" Height="85px" />&nbsp;</td>
                                    <td align="center" style="vertical-align: middle; width: 84px; height: 61px; text-align: center">
                                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/igm/考试规则_07.jpg"
                                            OnClick="ImageButton3_Click" Height="85px" />&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td align="center" colspan="1" style="width: 2px; height: 63px">
                        </td>
                        <td align="center" colspan="1" style="height: 63px">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="1" class="style6">
                        </td>
                        <td align="center" colspan="6" style="vertical-align: top; text-align: center" 
                            class="style7">
                            <table>
                                <tr>
                                    <td style="width: 100px">
                                          
                                          </td>
                                    <td style="width: 100px">
                                        <asp:DropDownList ID="ddlStuID" runat="server" Font-Size="9pt" Width="121px">
                                            <asp:ListItem Value="ID">学生证号</asp:ListItem>
                                            <asp:ListItem Value="Name">考试课程</asp:ListItem>
                                            <asp:ListItem Value="Expr1">套题名称</asp:ListItem>
                                            <asp:ListItem Value="res_single">单选成绩</asp:ListItem>
                                            <asp:ListItem Value="res_more">多选成绩</asp:ListItem>
                                            <asp:ListItem Value="res_total">总成绩</asp:ListItem>
                                        </asp:DropDownList></td>
                                    <td style="width: 100px">
                                        <asp:Label ID="Label3" runat="server" Font-Size="9pt" Text="关键字："></asp:Label></td>
                                    <td style="width: 106px">
                                        <asp:TextBox ID="txtSelect" runat="server" Font-Size="9pt" Width="102px" 
                                            Height="24px"></asp:TextBox></td>
                                    <td style="width: 100px">
                                        <asp:Button ID="btnSelect" runat="server" Font-Size="9pt" OnClick="BtnSelect_Click"
                                            Text="查询" /></td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <br />
                            <br />
                            &nbsp; &nbsp;</td>
                    </tr>
                    <tr style="color: #000000">
                        <td colspan="1" rowspan="1" class="style1">
                        </td>
                        <td colspan="2" rowspan="1" class="style2">
                        </td>
                        <td colspan="1" rowspan="1" class="style3">
                        </td>
                        <td colspan="1" rowspan="1" class="style4">
                        </td>
                        <td colspan="1" rowspan="1" class="style5">
                        </td>
                        <td colspan="1" rowspan="1" class="style4">
                        </td>
                    </tr>
                    <tr style="color: #000000">
                        <td colspan="1" style="width: 11px">
                        </td>
                        <td colspan="2" style="width: 223px">
                            &nbsp;</td>
                        <td colspan="1" style="width: 179px">
                            <br />
                        </td>
                        <td colspan="1">
                            <br />
                            <br />
                        </td>
                        <td colspan="1" style="width: 2px">
                        </td>
                        <td colspan="1">
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
