﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StartExamfra.aspx.cs" Inherits="QianUser_StartExamfra" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.Web.SessionState" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>在线考试</title>
    <script type="text/javascript">
var msec=0
var sec=0
var min=0
function Time()
{
document.forms[0].time.value=min+":"+sec
go=setTimeout("Time()",1)
msec++
if(msec==1500)
{
msec=0
sec++
}
if(sec==59)
{
if(min<20)
{
sec=0
min++
}
}
}
</script>
</head>
<body  onmousemove="Time()">
    <form id="form1" runat="server">
        <div style="text-align: center">
        <br />
        <table style="width: 800px; height: 85px;">
            <tr>
                <td align="center" colspan="2" style="height: 164px; background-image: url(../igm/正在考试.jpg);">
                    </td>
            </tr>
            <tr>
                <td align="left" colspan="2" style="height: 23px">
                    <table>
                        <tr>
                            <td style="width: 75px; height: 18px;">
                                <asp:Label ID="Label11" runat="server" Font-Size="9pt" Text="满分100分 "></asp:Label></td>
                            <td style="width: 71px; height: 18px;">
                                <asp:Label ID="Label12" runat="server" Font-Size="9pt" Text="单选题40分"></asp:Label></td>
                            <td style="width: 77px; height: 18px;">
                                <asp:Label ID="Label13" runat="server" Font-Size="9pt" Text="多选题60分"></asp:Label></td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td style="width: 64px">
                                <asp:Label ID="Label5" runat="server" Font-Size="9pt" Text="考试时间：" Width="62px" Height="15px"></asp:Label></td>
                            <td style="width: 49px">
                                <asp:Label ID="Label6" runat="server" Font-Size="9pt" ForeColor="Red" Text="20分钟"></asp:Label></td>
                            <td style="width: 37px">
                                <asp:Label ID="Label1" runat="server" Font-Size="9pt" Text="计时：" Width="36px"></asp:Label></td>
                            <td style="width: 55px">
                                <asp:TextBox runat="server" ID="time" Height="18px" Width="51px" Enabled="False" Font-Size="9pt">00:00</asp:TextBox>
                                </td>
                        </tr>
                    </table>
                    </td>
            </tr>
            <tr>
                <td align="left" colspan="2" style="height: 10px">
                    <asp:Label ID="Label14" runat="server" Text="一、单选题（" Font-Size="9pt"></asp:Label><asp:Label ID="Label15" runat="server" ForeColor="Red" Text="总分" Font-Size="9pt"></asp:Label><asp:Label ID="Label16" runat="server" ForeColor="Red" Font-Size="9pt">40</asp:Label><asp:Label ID="Label17" runat="server" ForeColor="Red" Text="分，答错不得分" Font-Size="9pt"></asp:Label><asp:Label ID="Label18" runat="server" Text=")" Font-Size="9pt"></asp:Label></td>
            </tr>
            <tr>
                <td align="left" colspan="2">
                    <asp:DataList ID="DataList1" runat="server" BackColor="White" 
                        BorderColor="White" BorderStyle="Double" CellPadding="4" Width="474px" 
                        Font-Size="9pt" onselectedindexchanged="DataList1_SelectedIndexChanged">
                        <ItemTemplate>
                            &nbsp;<asp:Label ID="Label2" runat="server" Height="19px" Width="1px" Font-Size="9pt"></asp:Label> <%#DataBinder.Eval(Container.DataItem, "que_subject")%>
                            <table style="width: 246px; font-size: 9pt;">
                                <tr>
                                    <td colspan="3">
                                </tr>
                                <tr>
                                    <td rowspan="4" style="width: 42px">
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="98px" Font-Size="9pt">
                                            <asp:ListItem>A</asp:ListItem>
                                            <asp:ListItem>B</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>D</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                    <td colspan="2" >
                                        <%#DataBinder.Eval(Container.DataItem, "optionA")%></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                    <%#DataBinder.Eval(Container.DataItem, "optionB")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                    <%#DataBinder.Eval(Container.DataItem, "optionC")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                    <%#DataBinder.Eval(Container.DataItem, "optionD")%>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td align="left" colspan="2" style="height: 6px">
                    <asp:Label ID="Label19" runat="server" Text="二、多选题（" Font-Size="9pt"></asp:Label><asp:Label ID="Label20" runat="server" ForeColor="Red" Text="总分" Font-Size="9pt"></asp:Label><asp:Label ID="Label21" runat="server" ForeColor="Red" Font-Size="9pt">60</asp:Label><asp:Label ID="Label22" runat="server" ForeColor="Red" Text="分，答错不得分" Font-Size="9pt"></asp:Label><asp:Label ID="Label23" runat="server" Text="）" Font-Size="9pt"></asp:Label></td>
            </tr>
            <tr>
                <td align="left" colspan="2" style="height: 6px">
                    <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="White" BorderStyle="Double" CellPadding="4" Width="475px" Font-Size="9pt">
                        <ItemTemplate>
                                        &nbsp;<asp:Label ID="Label24" runat="server" Height="9px" Width="9px" Font-Size="9pt"></asp:Label> <%#DataBinder.Eval(Container.DataItem, "que_subject")%>
                            <table style="width: 267px; font-size: 9pt;">
                                <tr>
                                    <td colspan="3">
                                        </td>
                                </tr>
                                <tr>
                                    <td rowspan="4" style="width: 41px">
                                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Font-Size="9pt">
                                            <asp:ListItem>A</asp:ListItem>
                                            <asp:ListItem>B</asp:ListItem>
                                            <asp:ListItem>C</asp:ListItem>
                                            <asp:ListItem>D</asp:ListItem>
                                        </asp:CheckBoxList></td>
                                    <td colspan="2" style="width: 218px">
                                    <%#DataBinder.Eval(Container.DataItem, "optionA")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="width: 218px">
                                    <%#DataBinder.Eval(Container.DataItem, "optionB")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="width: 218px">
                                    <%#DataBinder.Eval(Container.DataItem, "optionC")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="width: 218px">
                                    <%#DataBinder.Eval(Container.DataItem, "optionD")%>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    </asp:DataList></td>
            </tr>
            <tr>
                <td align="left" colspan="2" style="height: 6px">
                </td>
            </tr>
            <tr style="color: #000000">
                <td align="center" colspan="2">
                    &nbsp;<asp:Button ID="btnSubmit" runat="server" Font-Size="9pt" OnClick="btnSubmit_Click" Text="交卷"
                        Width="117px" Height="24px" />&nbsp;&nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button
                            ID="btnExit" runat="server" OnClick="btnExit_Click" Text="退出当前系统" Font-Size="9pt" />
                    &nbsp; &nbsp; &nbsp;&nbsp;</td>
            </tr>
            </table>
        <br />
        <table style="width: 800px; height: 21px">
            <tr>
                <td style=" height: 21px;">
                    <asp:Label ID="Label3" runat="server" Font-Size="9pt" Text="学生证号：" Visible="False"></asp:Label>
                    <asp:Label ID="lblStuID" runat="server" Text="学生编号" Font-Size="9pt"></asp:Label></td>
                <td style="height: 21px;">
                    &nbsp;<asp:Label ID="Label4" runat="server" Font-Size="9pt" Text="考试科目：" Visible="False"></asp:Label>
                    <asp:Label ID="lblSubject" runat="server" Text="所选科目" Font-Size="9pt"></asp:Label></td>
                <td style=" height: 21px;">
                    <asp:Label ID="Label7" runat="server" Font-Size="9pt" Text="考试套题：" Visible="False"></asp:Label>
                    <asp:Label ID="lblQuestion" runat="server" Text="所选套题" Font-Size="9pt"></asp:Label></td>
                <td style="height: 21px;">
                    <asp:Label ID="Label8" runat="server" Font-Size="9pt" Text="单选题：" Visible="False"></asp:Label>
                    <asp:Label ID="lblSel" runat="server" Text="0分" Font-Size="9pt"></asp:Label></td>
                <td style="height: 21px;">
                    <asp:Label ID="Label9" runat="server" Font-Size="9pt" Text="多选题：" Visible="False"></asp:Label>
                    <asp:Label ID="lblDSel" runat="server" Text="0分" Font-Size="9pt"></asp:Label></td>
                <td style="height: 21px;">
                    <asp:Label ID="Label10" runat="server" Font-Size="9pt" Text="总分：" Visible="False"></asp:Label>
                    <asp:Label ID="lblTotal" runat="server" Height="15px" Font-Size="9pt"></asp:Label></td>
            </tr>
        </table>
    </div>
        <asp:TextBox ID="TextBox1" runat="server" Height="0px" Width="0px"></asp:TextBox>
    </form>
</body>
</html>
