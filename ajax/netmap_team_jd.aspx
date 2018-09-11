<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="netmap_team_jd.aspx.cs" Inherits="direct_demo.ajax.netmap_team_jd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>treeview</title>
    <link rel="stylesheet" type="text/css" href="/demo1/images/member/main.css" />
    
<%--    <script>
        $(window.parent.document).find("#frmNetMapTJ").load(function() {
        var main = $(window.parent.document).find("#frmNetMapTJ");
            var thisheight = $(document).height() + 30;
            main.height(thisheight);
        });
    </script>--%>
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script>
        $(document).bind("contextmenu", function (e) {
            return false;
        });
    </script>
    <style>
      .color1{ color:#0000ff;}
    </style>
</head>
<body>

    <form id="Form2" runat="server">

                <table class="menu" cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="td-title">会员编号:</td>
                        <td class="td-value">
                            <input type="text" id="txtBianhao" class="m-text" />
                        </td>
                        <td width="180" style="text-align:left;">
                            <input id="btn_enter" type="button" class="m-btn m-btn-blue" value="查询记录" onclick="pck.search()" style="width:80px;" />
                            <input id="Button1" type="button" class="m-btn m-btn-blue" value="返回顶层" onclick="window.location.href='netMap_team_jd.aspx?teamtype=<%=teamType %>'" style="width:80px;" />
                        </td>
                        <td style="text-align:left;">
<a href="javascript:history.go(-1);">Back</a>
&nbsp;<a href="javascript:history.go(1);">Next</a>
&nbsp;<a href="javascript:window.location.reload();">Reflash</a>
                             &nbsp; (注：点击会员编号查看下面相应层数)
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

    <div>
<%-- &nbsp; <a href="javascript:history.go(-1);">Back</a>
&nbsp;<a href="javascript:history.go(1);">Next</a>
&nbsp;<a href="javascript:window.location.reload();">Reflash</a>
 (提示:点击会员编号查看下一层)<br />--%>
                 <%
                    if (_preID != "" && _preID!="0")
                                {
                                    Response.Write("<p style=\" text-align:left;\"><a class=\"cursor\" onclick=\"location.href='netmap_team_jd.aspx?teamtype=" + teamType + "&id=" + _preID + "'\">上一层</a></p>");
                                } 
                    %>
        <asp:TreeView ID="tv1" runat="server" ShowLines="True">
        </asp:TreeView>
       
    
    </div>
    <asp:HiddenField ID="hidLevel" Value="3" runat="server" />
    </form>
   <script type="text/javascript">
    var pck = {
        rootid: "000",
        search: function () {
            var val1 = document.getElementById("txtBianhao").value;
            if (val1 != "")
                window.location.href = "netmap_team_jd.aspx?bianhao=" + val1 + "&teamtype=<%=teamType %>";
        },
        init: function () {
            //m.node("#btn_enter").click(pck.search);
        }
    }
    </script>
</body>
</html>
