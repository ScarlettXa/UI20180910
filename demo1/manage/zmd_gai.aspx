<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zmd_gai.aspx.cs" Inherits="direct_demo.demo1.manage.zmd_gai" %>
<%@ Register TagPrefix="ascx" TagName="ChkLogin" Src="~/ascx/ChkLogin_Manage.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/demo1/images/member/datalist.css" type="text/css">
 <script src="/js/jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>"></script>
<script type="text/javascript" src="/js/utils.js"></script>
</head>
<body>
    <form id="form1" runat="server">
<ascx:ChkLogin ID="ascx_chkLogin" runat="server" />
    <br>
    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="Table_xt">
        <tbody>
            <tr>
                <td height="20" align="left" bgcolor="#d4e8fa">
                    <table width="100%" border="0" cellpadding="3" cellspacing="1">
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                服务中心名称:
                            </td>
                            <td height="20" align="left" valign="middle" bgcolor="#FBFDFF">
                                <input name="swusername" type="text" id="mingcheng" runat="server" size="15">
                                <input  type="hidden" id="txtHuiyuanId" runat="server">
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                服务中心级别:
                            </td>
                            <td height="20" align="left" valign="middle" bgcolor="#FBFDFF">
                                <asp:DropDownList ID="ddlzmJb" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                负责地区:<br /><label id="reg_notice1"  style=" color:Red;"></label>
                            </td>
                            <td height="20" align="left" valign="middle" bgcolor="#FBFDFF">
					             <select name="province" id="province" onChange="provincechange('province','city','area','reg_notice1')" style="width:140px;">
                                   <asp:Literal ID="lblProvince" runat="server"></asp:Literal>
                                 </select><br />
                                 <select name="city" id="city" onChange="citychange('province','city','area','reg_notice1')" style="width:160px;">
                                 <asp:Literal ID="lblCity" runat="server"></asp:Literal>
				                 </select> <br />
				                 <select name="area" id="area" style="width:160px;">
				                 <asp:Literal ID="lblArea" runat="server"></asp:Literal>
				                 </select><br />
                                <input type="text" value="" id="diqu" runat="server" style="width: 140px;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" valign="middle" bgcolor="#FBFDFF">
                                备注:
                            </td>
                            <td height="20" align="left" valign="middle" bgcolor="#FBFDFF">
                                <textarea rows="2" cols="20" id="beizhu" runat="server" style="height: 180px; width: 455px;"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center" valign="middle" background="/demo1/images/member/tab_19.gif">
                                      <asp:Button ID="Button4" runat="server" Text="确定" OnClick="Button4_Click" CssClass="button_text"  onmousedown="this.className='button_onmousedown'" onmouseover="this.className='button_onmouseover'"
                                    onmouseout="this.className='button_onMouseOut'" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
    </table>
    <br>
    <br>
    </form>
</body>
</html>