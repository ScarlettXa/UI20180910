<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AreaPinYin.aspx.cs" Inherits="direct_demo.demo1.manage.AreaPinYin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="/demo1/images/datalist.css" type="text/css" />
    <script type="text/javascript" src="/js/utils.js"></script>
<script src="/js/jquery.js" type="text/javascript"></script>
<script type="text/javascript" src="/Js/json2.js"></script>
    <script src="/js/pinyin.js"></script>
    <script>
        function setPinYin(id1, s1) {
            var arr1 = s1.split(',');
            var py='';
            //var py = codefans_net_CC2PY(s1);
            for (i = 0; i < arr1.length; i++) {
                if(i==0)
                    py += codefans_net_CC2PY(arr1[i]);
                else
                    py +=","+ codefans_net_CC2PY(arr1[i]);
            }
            document.getElementById("txtShow1").value = py;

            $.post("/ajax/comm_json.aspx", { Action: "post", CheckType: "setCityPinYin", oid: id1, ovalue: py }
    , function(value, textStatus) {
        //alert(value.result);
         document.title = id1 + "_" + value.result;
            location.href = 'AreaPinYin.aspx?act=u1';
    }, "json");
        }


    </script>
</head>
<body>
    <form id="form1" runat="server">
<asp:Repeater ID="rptFastCarAgent" runat="server">
  <ItemTemplate>
   <dl>
     <dt><%#Eval("province").ToString() %></dt>
     <dd>
         <%#getCityArea(Int32.Parse(Eval("provinceID").ToString()), Eval("province").ToString())%>
     </dd>
   </dl>
  </ItemTemplate>
</asp:Repeater>
<input type="text" id="txtShow1" />


<script>
   var id1=<%=_id1 %>;
   var s1='<%=_s1 %>';
   if(id1!=""&&s1!="")
    setPinYin(id1, s1);
</script>
    </form>
</body>
</html>
