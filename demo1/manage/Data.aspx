<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="direct_demo.demo1.manage.Data" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
<link rel="stylesheet" href="/demo1/images/datalist.css?r=<%=jsRnd %>" type="text/css" />
<%--<script type="text/javascript" src="/demo1/js/comm.js?r=<%=jsRnd %>"></script>--%>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/comm.js?r=<%=jsRnd %>&r=7"></script>
<script type="text/javascript" src="/js/utils.js"></script>
<script src="/js/jquery.js" type="text/javascript"></script>
<script>
  function reFlash()
  {
    frm1.location.reload();
    location.href='data.aspx';
  }
  
function createMenu()
{
      // var s_menuBody;
      // s_menuBody=''
       // $.post("https://api.weixin.qq.com/cgi-bin/menu/create?access_token=ACCESS_TOKEN", { Action: "post", body: s_menuBody}
       $.post("/ajax/weixin_json.aspx", { Action: "get", CheckType: "createMenu"}
    , function(value, textStatus) {
        //var s_errcode=value.errcode;
        //var s_errmsg=value.errmsg;
       // document.getElementById("sp_createMenu").innerHTML="errcode："+s_errcode+"   errmsg："+s_errmsg;
      // document.getElementById("sp_createMenu").innerHTML=value.errcode+"_"+value.errmsg;
       if(value.errcode==0)
         alert("恭喜您，操作成功");
       else
         alert("操作失败 "+value.errmsg);
    }, "json");
}
</script>
<script language="javascript" type="text/javascript" src="/weixin/default.aspx"></script>
    <style type="text/css">
        .tb1{ display:none; border-left:solid 1px #ccc;border-right:solid 1px #ccc; margin-left:10px;}
        .tb1 th{ line-height:25px; padding:0 10px 0 10px; font-weight:bold; text-align:left; background-color:#ccc;}
        .tb1 td{ line-height:25px; padding:0 10px 0 10px; text-align:left; border-bottom:solid 1px #ccc;}
 
    </style>
</head>
<body>

    <form id="form1" runat="server">

<div id="mainbox1" style="display:block;" runat="server">
    <div style="text-align: center; padding-top:100px;">   <%-- OnClientClick="return ifConfirm()"--%>  <%--Enabled="false"--%>
        <asp:LinkButton ID="btnBK" runat="server"     onclick="btnBK_Click" Enabled="false" Visible="false">数据备份</asp:LinkButton>  &nbsp;  &nbsp;  &nbsp;  &nbsp; 
        <%--<asp:LinkButton ID="LinkButton1" runat="server"     onclick="btnZhixing_Click"    OnClientClick="return ifConfirm_this()">奖金结算</asp:LinkButton>  &nbsp;  &nbsp;  &nbsp;  &nbsp; --%>
        <%--<a href="#" onclick="return ifConfirm_this()">奖金结算</a>  &nbsp;  &nbsp;  &nbsp;  &nbsp;--%>
        <asp:LinkButton ID="btnDataDel" runat="server" onclick="btnDataDel_Click" OnClientClick="return ifConfirm()">数据清空</asp:LinkButton> <br /> &nbsp; <br />
        <asp:Label ID="txtShow" runat="server" Text="" ForeColor="#006666"></asp:Label>
<%
    if (Request.Cookies["ok"] != null)
    { 
     %>
               <input type="button" value="createWeixinMenu" id="bt_createMenu" onclick="createMenu()" /> &nbsp; 
       <span id="sp_createMenu"></span>
<%
  }  
     %>        
        
    </div>
     <table border="0" cellpadding="0" cellspacing="0" class="tb1" align="left">
       <tr>
         <th>序号</th>
         <th>备份时间</th>
         <th>操作</th>
       </tr>
       <asp:Repeater ID="rpt1" runat="server">
        <ItemTemplate>
           <tr>
             <td><%#Container.ItemIndex+1 %></td>
             <td><%#Eval("addtime").ToString() %></td>
             <td>
            <%--<asp:LinkButton ID="LinkButtonRestore" runat="server"   oncommand="LinkButtonRestore_Command" CommandName="restore" CommandArgument='<%#Eval("id").ToString() %>'  OnClientClick="return ifConfirm()">恢复</asp:LinkButton>--%>
            <%--<asp:LinkButton ID="LinkButton_down" runat="server"   oncommand="LinkButtonRestore_Command" CommandName="down" CommandArgument='<%#Eval("id").ToString() %>'>下载</asp:LinkButton>--%>
               &nbsp;
            </td>
           </tr>
        </ItemTemplate>
       </asp:Repeater>
     </table>
    
    <iframe id="frm1" src="dataset.aspx" width="0" height="0" style=" display:none;" ></iframe>
</div>

<div id="mainbox2" style="display:none;">
   <div style="text-align:center; padding-top:50px;">
      请 稍 候<br><img src="/images/waiting2.gif" /> ... <span id="status"></span>
   </div>
</div>
<script>
  function ifConfirm_this()
  {
    if(!confirm('\n特别提示！？\n\n请确认该操作！'))
       return  false;
     zhixinggo();
      return true;
      
  }
  
  function ifgo()
  {
    var flag1=<%=_zhixing %>;
    if(flag1==1)
    zhixinggo();
  }
  
  function zhixinggo()
  {
  
     showWait();
     cmdZhixing();
//    if(cmdZhixing()==0)
//       location.href='data.aspx?zhixing=1';
//    else
//      {
//	      alert("执行完毕");
//	      location.href='data.aspx';
//      }
////    if(cmdZhixing()==true)
////       location.reload();
//  // alert(cmdZhixing());
  }

window.onload=function(){
ifgo()
}
</script>
    </form>
</body>
</html>
