<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StockTradeHistory.aspx.cs" Inherits="direct_demo.ajax.StockTradeHistory" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/demo2/css/main.css" rel="stylesheet" type="text/css" />
    <link href="../Plugins/blackbox/css/blackbox.css" rel="stylesheet" type="text/css" />
    <link href="/demo2/css/body2.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    .netpager{ margin-top:5px;}
    </style>
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/js/comm.js"></script>
    <script type="text/javascript">
        window.onload = function () {
            getLang();
        }
    </script>
</head>
<body style="  margin:0; padding:0;">
<div class="wrapper" style=" margin:0; padding:0; float:left;width:100%; ">
                  <div class="form-horizontal">
	                    <div class="widget">
<div class="table-overflow">
<br />
<h6 class="ajaxlangTransactionRecord"><%--交易记录--%></h6>
<table class="table table-bordered table-striped table-hover">
                            <thead>
                                <tr>
                                    <th class="ajaxlangDate">
                                        <%--时间--%>
                                    </th>
                                    <th class="ajaxlangPrice">
                                        <%--价格--%>
                                    </th>
                                    <th class="ajaxlangNum">
                                        <%--量--%>
                                    </th>
                                    <th class="ajaxlangAmount">
                                        <%--金额--%>
                                    </th>
                                    <th class="ajaxlangTradeAccount"><%--交易账户--%></th>
                                </tr>
                            </thead>
                             <tbody>
<asp:Repeater ID="rptlist" runat="server">
  <ItemTemplate>
                    <tr>
                        <td>
                            <%#Eval("addtime").ToString()%>
                        </td>
                        <td>
                            <%#float.Parse(Eval("price").ToString()) %>
                        </td>
                        <td>
                            <%#Eval("num").ToString() %>
                        </td>
                        <td>
                           <%#float.Parse(Eval("money1").ToString())%>
                        </td>
                        <td>
                             <%#Eval("UserFrom").ToString() %>
                        </td>
                    </tr>
  </ItemTemplate>
</asp:Repeater>
                             </tbody>
                 
                 </table>
<div class="datatable-footer" style="vertical-align:middle;">
                       
                        
<!-- AspNetPager 7.4.1 Copyright:2003-2012 Webdiyer (en.webdiyer.com) -->
<div id="AspNetPager1" class="netpager" style="font-size:Small;height:26px;width:800px;text-align:center;">
<div align="center" class="netpager" style="float:left;">
	<asp:Literal ID="txtPage" runat="server"></asp:Literal>
</div>
</div>
<!-- AspNetPager 7.4.1 Copyright:2003-2012 Webdiyer (en.webdiyer.com) -->


                        
                        
                        </div>
</div>
</div>
</div>
</div>
</body>
</html>
