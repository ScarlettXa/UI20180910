<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="netMap_team.aspx.cs" Inherits="direct_demo.ajax.netMap_team" %>
<!DOCTYPE html>

<html lang="zh-cmn-Hans">
<head>
    <meta property="qc:admins" content="1051105554536547046375" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta name="keywords" content="会员会员系统">
    <meta name="description" content="会员会员系统">

    <title>会员网络</title>
    <link href="/styles/ui-2.0-min.css" rel="stylesheet" />
    <%--<link href="/Styles/engine.css" rel="stylesheet" />--%>
    <script src="/js/jquery.js" type="text/javascript"></script>
    <script src="/Scripts/jquery-1.11.1.min.js"></script>
    <script src="/Scripts/engine.js"></script>

        <link href="/styles/jquery.jorgchart.css" rel="stylesheet" />
        <script src="/Scripts/jquery-ui.min.js"></script>
        <script src="/Scripts/jquery.jorgchart.js"></script>


    <style type="text/css">
        .cursor{ cursor:pointer;}
        .ms-info,
        .ms-menu {
            min-height: 700px;
        }

        .menu {
            border-bottom: 1px dashed #eee;
            margin-bottom: 10px;
            width: 100%;
        }

            .menu .td-title {
                width: 65px;
                height: 38px;
                text-align: right;
                padding-right: 5px;
                font-weight: bold;
            }

            .menu .td-value {
                width: 105px;
            }

                .menu .td-value .m-text,
                .menu .td-value .m-select,
                .menu .td-value .m-date-ipt {
                    width: 100px;
                    height: 24px;
                }

        .ms-info .jOrgChart table {
            width: 100%;
        }

        .ms-info .jOrgChart .down {
            background: #888;
        }

        .ms-info .jOrgChart .top {
            border-top: 2px solid #888;
        }

        .ms-info .jOrgChart .left {
            border-right: 1px solid #888;
        }

        .ms-info .jOrgChart .right {
            border-left: 1px solid #888;
        }

        .ms-info .jOrgChart .node {
            background-color: #fcfcfc;
            color: #888;
            border: 3px solid #888;
            border-radius: 3px;
            margin: 0 6px;
            width: 110px;
            height: 107px;
            padding: 5px 8px;
            padding-right: 0px;
            padding-top: 0px;
        }

            .ms-info .jOrgChart .node p {
                font-size: 13px;
                margin: 0px;
                padding: 4px 0px;
                text-align: left;
                border-bottom: 1px dashed #eee;
            }

                .ms-info .jOrgChart .node p:last-child {
                    border-bottom: 0px none;
                }

        .ms-info .jOrgList {
            margin: 0px;
            padding: 0px;
            list-style: square;
            margin-left: 30px;
            height: auto;
            border-left: 1px dashed #ddd;
        }

            .ms-info .jOrgList li {
                height: 35px;
                line-height: 35px;
                border-bottom: 1px dashed #ddd;
                color: #888;
                padding-left: 10px;
            }

                .ms-info .jOrgList li ul {
                    list-style: decimal;
                }

                .ms-info .jOrgList li label span {
                    margin-left: 9px;
                    color: #666;
                }
    </style>
</head>
<body>
    <!--导航栏-->

    <div class="mn-content">
        <div class="mn-inner">
            
<table cellpadding="0" cellspacing="0" style="width:100%;">
    <tr>
        <td valign="top">
            <div class="ms-info">
                <%--<div class="title">会员网络</div>--%>
               
                <table class="menu" cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="td-title">会员编号:</td>
                        <td class="td-value">
                            <input type="text" id="txtBianhao" class="m-text" />
                        </td>
                        <td width="180" style="text-align:left;">
                            <input id="btn_enter" type="button" class="m-btn m-btn-blue" value="查询记录" onclick="pck.search()" style="width:80px;" />
                            <input id="Button1" type="button" class="m-btn m-btn-blue" value="返回顶层" onclick="window.location.href='netMap_team.aspx?teamtype=<%=teamType %>'" style="width:80px;" />
                        </td>
                        <td style="text-align:left;">
<a href="javascript:history.go(-1);">Back</a>
&nbsp;<a href="javascript:history.go(1);">Next</a>
&nbsp;<a href="javascript:window.location.reload();">Reflash</a>
                        &nbsp;显示层数:
                        <%
                            string url = "netmap_team.aspx?teamtype=" + teamType;
                            if (Request.QueryString["bianhao"] != null)
                                url += "&bianhao=" + Request.QueryString["bianhao"].ToString();
                            for (int i = 2; i <= 4; i++)
                            {
                                Response.Write("<a class=\"cursor\" onclick=\"location.href='"+url+"&levels="+i+"'\">" + i.ToString() + "层</a> &nbsp;");
                            }
                             %>

                             &nbsp; (注：点击会员编号查看下面相应层数)
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <div> <a href="netmap_team_jd.aspx?teamtype=<%=teamType %>&id=<%=_curID %>">切换树形图</a>  (注：点击会员编号查看下一层)</div>
                <%
                    if (_preID != "" && _preID!="0")
                                {
                                    Response.Write("<p style=\" text-align:center;\"><a class=\"cursor\" onclick=\"location.href='netmap_team.aspx?teamtype=" + teamType + "&id=" + _preID + "'\">上一层</a></p>");
                                } 
                    %>
                    <ul id="netchart" style="display:none;">
                        <li>
                        <asp:Literal ID="litInfo" runat="server"></asp:Literal>
<%--                            <p><a class="" onclick="netmapwz.aspx?bianhao=abc">编号：10000</a></p>
                            <p>级别：旗舰会员</p>
                            <p>层数：0</p>
                            <p>业绩：20268.00</p>
                            <ul>
                                    <li>
                                        <p><a href="/Member/netchart?rootid=CN10099">编号：CN10099</a></p>
                                        <p>级别：旗舰会员</p>
                                        <p>层数：1</p>
                                        <p>业绩：9978.00</p>
                                    </li>
                                    <li>
                                        <p><a href="/Member/netchart?rootid=CN10193">编号：CN10193</a></p>
                                        <p>级别：旗舰会员</p>
                                        <p>层数：1</p>
                                        <p>业绩：3992.00</p>
                                        <ul>
                                                <li>
                                                    <p><a href="/Member/netchart?rootid=CN10099">编号：CN10099</a></p>
                                                    <p>级别：旗舰会员</p>
                                                    <p>层数：1</p>
                                                    <p>业绩：9978.00</p>
                                                </li>
                                                <li>
                                                    <p><a href="/Member/netchart?rootid=CN10193">编号：CN10193</a></p>
                                                    <p>级别：旗舰会员</p>
                                                    <p>层数：1</p>
                                                    <p>业绩：3992.00</p>
                                                </li>
                                                <li>
                                                    <p><a href="/Member/netchart?rootid=CN10193">编号：CN10193</a></p>
                                                    <p>级别：旗舰会员</p>
                                                    <p>层数：1</p>
                                                    <p>业绩：3992.00</p>
                                                </li>
                                           </ul>

                                    </li>
                               </ul>--%>
                        </li>
                    </ul>
                    <div id="chart" class="orgChart"></div>
            </div>
        </td>
    </tr>
</table>
<script type="text/javascript">
    var pck = {
        rootid: "000",
        search: function () {
            var val1 = document.getElementById("txtBianhao").value;
            if (val1 != "")
                window.location.href = "netMap_team.aspx?bianhao=" + val1 + "&teamtype=<%=teamType %>";
        },
        init: function () {
            //m.node("#btn_enter").click(pck.search);
        }
    }
    // pck.init();

    jQuery(document).ready(function () {
        //加载图表事件
        if ($("#netchart").length > 0) {
            $("#netchart").jOrgChart({
                chartElement: '#chart',
                dragAndDrop: true
            });

            // $('#list-html').text($('#netchart').html());
            //            $("#netchart").bind("DOMSubtreeModified", function () {
            //                $('#list-html').text('');
            //                $('#list-html').text($('#netchart').html());
            //                prettyPrint();
            //            });
        }
    });
</script>
        </div>
    </div>

</body>
</html>
