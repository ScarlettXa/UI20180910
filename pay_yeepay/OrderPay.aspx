<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPay.aspx.cs" Inherits="direct_demo.pay_yeepay.OrderPay" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml" >
  <head>
    <meta http-equiv="content-Type" content="text/html; charset=gb2312" />
    <title>��׼�̻�����֧���ӿ�</title>
    <style type="text/css">
      <!--
      TD {FONT-SIZE: 9pt}
      SELECT {FONT-SIZE: 9pt}
      OPTION {COLOR: #5040aa; FONT-SIZE: 9pt}
      INPUT {FONT-SIZE: 9pt}
      -->
    </style>
<script type="text/javascript" src="/js/comm.js?r=2014052301"></script>
<script src="/js/jquery.js" type="text/javascript"></script>
  </head>

  <body bgcolor="#FFFFFF">
    <form action="http://www.shop.people123.cn/e8pay/redirect.aspx" METHOD="POST" name="frm1" id="frm1" target="_blank">	
      <table width="450px" border="1" cellspacing="0" cellpadding="3" bordercolordark="#FFFFFF" bordercolorlight="#333333" bgcolor="#F0F0FF" align="center">
        <tr bgcolor="#8070FF"> 
          <td colspan="2" align="center">
            <font color="#FFFF00"><b>���߳�ֵ</b></font>
          </td>
        </tr>
        <tr style="display:none">
          <td width="37%">�ύ��ַ</td>
          <td width="63%">
            <select name="test">
              <option value="1">���Ի���</option>
              <option value="0" selected="selected">��ʽ����</option>
            </select>
          </td>
        </tr>
        <tr style="display:none">
          <td>�̻���</td>
          <td>
            <input type="text" name="Mer_code" size="18" value="60061901" /><!--�����̻���-->
          </td>
        </tr>
        <tr style="display:none">
          <td>�̻�֤��</td>
          <td>
            <input type="text" name="Mer_key" size="40" value="<%=_Mer_key %>" /><!--�����̻���-->
          </td>
        </tr>
        <tr>
          <td>������</td>
          <td>
            <input name="Billno" type="text" id="Billno" size="35" value="" runat="server" readonly />
          </td>
        </tr>
        <tr>
          <td>��&nbsp;&nbsp;��</td>
          <td>
            <input type="text" id="Amount" name="Amount" size="18" value="0" runat="server" /><!--������λС��-->
          </td>
        </tr>
        <tr>
          <td>��&nbsp;&nbsp;��</td>
          <td>
            <input name="Date" type="text" id="Date" size="18" value="" runat="server" />
          </td>
        </tr>
        <tr style="display:none">
          <td>֧������</td>
          <td>
            <select name="Currency_Type">
              <option value="RMB" selected="selected">�����</option>
              <option value="HKD">�۱�</option>
              <option value="USD" >USD</option>
            </select>
          </td>
        </tr>
        <tr style="display:none">
          <td>֧����ʽ</td>
          <td>
            <select name="Gateway_Type">
              <option value="01" selected="selected">����ҽ�ǿ�</option>
              <option value="02">�������ÿ�</option>
            </select>
          </td>
        </tr>
        <tr style="display:none">
          <td>����</td>
          <td>
            <select name="Lang">
              <option value="GB" selected="selected">GB����</option>
              <option value="EN">Ӣ��</option>
            </select>
          </td>
        </tr>
        <tr style="display:none">
          <td>֧���ɹ�����URL</td>
          <td>
            <input name="Merchanturl" type="text" id="Merchanturl" size="40" value="http://www.shop.people123.cn/e8pay/OrderReturn.aspx" runat="server" />
          </td>
        </tr>
        <tr style="display:none">
          <td>�̻��������ݰ�</td>
          <td>
            <input type="text" name="Attach" size="40" value="" />
          </td>
        </tr>
        <tr style="display:none">
          <td>����֧�����ܷ�ʽ</td>
          <td>
            <select name="OrderEncodeType">
              <option value="0">������</option>
              <option value="2" selected="selected">md5ժҪ</option>
              <option value="9">����</option>
            </select>
          </td>
        </tr>
        <tr style="display:none">
          <td>���׷��ؼ��ܷ�ʽ</td>
          <td>
            <select name="RetEncodeType">
              <option value="11">md5withRsa</option>
              <option value="12" selected="selected">md5ժҪ</option>
              <option value="9">����</option>
            </select>
          </td>
        </tr>
        <tr style="display:none">
          <td>�Ƿ��ṩServer���ط�ʽ</td>
          <td>
            <select name="Rettype">
              <option value="0" >��Server to Server</option>
              <option value="1" selected="selected">��Server to Server</option>
              <option value="9">����</option>
            </select>
          </td>
        </tr>
        <tr style="display:none">
          <td>Server to Server����ҳ��</td>
          <td>
            <input type="text" name="ServerUrl" size="40" value="http://www.shop.people123.cn/e8pay/S2SReturn.aspx" />
          </td>
        </tr>
        <tr>
          <td colspan="2" align="center" height="30">
            <input type="button" value="�ύ" id="btSubmit" name="btSubmit" onclick="return curPay()" />
            <%--<input type="reset" value="��д" />--%>
            <input type="hidden" id="hidUserId" value="<%=i_id %>" />
          </td>
        </tr>
      </table>
<%
    string s1 = "000000004";
    int i1 = Int32.Parse(s1);
   // Response.Write(i1.ToString());
     %>
    </form> 
  </body> 
</html>