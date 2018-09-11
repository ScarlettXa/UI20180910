<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chart.aspx.cs" Inherits="direct_demo.ajax.chart" %>


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

    <title>会员办公管理系统</title>
    <link href="/styles/ui-2.0-min.css" rel="stylesheet" />

    <script src="/Scripts/mtopt-2.1-min.js"></script>
    <script src="/Scripts/mtopt/ui-2.0-min.js"></script>
    <script src="/Scripts/jquery-1.11.1.min.js"></script>
    <script src="http://mtopt.oss-cn-beijing.aliyuncs.com/cdn/highcharts-4.0.4/js/highcharts.js"></script>
  <script src="/Scripts/highcharts-more.js"></script>
    <script src="/Scripts/engine.js"></script>

    <style type="text/css">
        /*信息详情*/
        .mn-deal-detail{width:100%;padding:8px 12px;padding-right:4px;height:240px;}
        .mn-deal-detail td{position:relative;border-left:1px solid #eee;padding:0px 8px;}
        .mn-deal-detail td:first-child{border-left:0px none;padding-left:0px;}
        .mn-deal-detail .title{font-size:14px;font-weight:bold;margin:0px;padding:0px;margin-bottom:6px;}
        .mn-deal-detail .more{position:absolute;top:0px;right:8px;}
        /*信息详情-历史*/
        .mn-deal-detail .money td{border-left:0px none;padding-left:0px;}
        .mn-deal-detail .money .m-btn{border:1px solid #ddd;margin-right:5px;line-height:26px;height:26px;width:50px;border:1px solid #ccc;}
        .mn-deal-detail .money .m-btn-blue{border:1px solid #0088cc;height:25px;}
        .mn-deal-detail .history{position:absolute;bottom:4px;width:100%;border-top:1px solid #e5e5e5;padding-top:12px;}
        /*信息详情-菜单*/
        .mn-deal-detail .menu{margin:0px;padding:0px;list-style:none;}
        .mn-deal-detail .menu li{float:left;text-align:center; margin-right:17px;}
        .mn-deal-detail .menu li a{font-weight:bold;}
        .mn-deal-detail .menu li p{margin:0px;padding:0px;margin-top:5px;}
        /*信息详情-列表*/
        .mn-deal-detail .lists {position:relative;width:100%;height:auto;} 
        .mn-deal-detail .list{width:230px;white-space: nowrap;text-overflow: ellipsis;overflow:hidden;height:25px;}
        .mn-deal-detail .list .time{position:absolute;right:0px;}
        /*信息详情-表格*/
        .mn-deal-detail .table td{border-left:0px none;padding-left:0px;}
        .mn-deal-detail .table .name{min-width:60px;height:25px;}
        /*资金记录*/
        .pg-deal-table{width:100%;height:auto;position:relative;}
        .pg-deal-table #quick{list-style:none;margin:0px;padding:0px;width:100%;}
        .pg-deal-table #quick li{width:50px;float:left;text-align:center;margin-bottom:5px;}
        .pg-deal-table #quick li a{font-size:32px;color:#777;}
        .pg-deal-table #quick li p{color:#777;margin:0px;margin-bottom:18px;white-space: nowrap;text-overflow: ellipsis;overflow:hidden;}
        .pg-deal-table #quick li:hover a{color:#0088cc;}
        .pg-deal-table #quick li:hover p{color:#0088cc;}
    </style>
</head>
<body>


<table class="pg-deal-table" cellpadding="0" cellspacing="0">
    <tr>
        <td>
            <div class="mn-box" style="position:relative;height:460px;">
                <p class="title">近日收支情况</p>
                <div id="container" style="margin-top:30px"><img src="/images/loading.gif" /></div>
            </div>
        </td>
    </tr>
</table>
<script type="text/javascript">
   
    var chartDate, chartJJ, chartCX, chartSS;
    var arrDate, arrJJ, arrCX, arrSS;

    var url1 = '/WS/WSAccounts.aspx?CheckType=GetChartInfo&jstype=jsonp&callback=?&rand=' + Math.round(Math.random() * 10000);
    $.getJSON(url1,
    function (data) {
        if (data.result == "success") {
            chartDate = data.chartDate;
            chartJJ = data.chartJJ;
            chartCX = data.chartChongfuxiaofei;
            chartSS = data.chartShuishoushou;
            arrDate = chartDate.split(',');
            arrJJ = chartJJ.split(',');
            arrCX = chartCX.split(',');
            arrSS = chartSS.split(',');

            //alert(chartJJ);
            // alert(arrJJ[0] + "_" + arrJJ[1] + "_" + arrJJ[2] + "_" + arrJJ[3] + "_" + arrJJ[4] + "_" + arrJJ[5] + "_" + arrJJ[6] + "_" + arrJJ[7] + "_" + arrJJ[8] + "_" + arrJJ[9]);
            //pck.init();
        }
        else {
            mpi.news(data.errInfo, 3000);
        }
    }
);


 
    var pck = {
        //加载页面
        init: function () {
            $(function () {
                $('#container').highcharts({
                    chart: {
                        type: 'spline',
                        backgroundColor: 'rgba(0,0,0,0)',
                        style: {
                            fontFamily: "Dosis, sans-serif"
                        }
                    },
                    title: {
                        text: null
                    },
                    subtitle: {
                        text: null
                    },
                    credits: {
                        text: 'soft0512.com',
                        href: "http://www.soft0512.com"
                    },
                    xAxis: {
                        categories: [arrDate[0], arrDate[1], arrDate[2], arrDate[3], arrDate[4], arrDate[5], arrDate[6], arrDate[7], arrDate[8], arrDate[9]]//chartDate'03/23', '03/24', '03/25', '03/26', '03/27', '03/28', '03/29', '03/30', '03/31', '04/01'
                    },
                    yAxis: {
                        title: {
                            text: '收入 元'
                        },
                        plotLines: [{
                            value: 0,
                            width: 1,
                            color: '#808080'
                        }]
                    },
                    tooltip: {
                        valueSuffix: '元'
                    },
                    legend: {
                        layout: 'vertical',
                        align: 'right',
                        verticalAlign: 'middle',
                        borderWidth: 0
                    },
                    series: [{
                        name: '奖金',
                        data: [parseFloat(arrJJ[0]), parseFloat(arrJJ[1]), parseFloat(arrJJ[2]), parseFloat(arrJJ[3]), parseFloat(arrJJ[4]), parseFloat(arrJJ[5]), parseFloat(arrJJ[6]), parseFloat(arrJJ[7]), parseFloat(arrJJ[8]), parseFloat(arrJJ[9])]//chartJJ0, 0, 0, 0, 0, 0, 0, 200.00, 0, 0
                    }, {
                        name: '纳税',
                        data: [parseFloat(arrSS[0]), parseFloat(arrSS[1]), parseFloat(arrSS[2]), parseFloat(arrSS[3]), parseFloat(arrSS[4]), parseFloat(arrSS[5]), parseFloat(arrSS[6]), parseFloat(arrSS[7]), parseFloat(arrSS[8]), parseFloat(arrSS[9])]//chartSS0, 0, 0, 0, 0, 0, 0, 100.00, 0, 0 
                    }, {
                        name: '重消',
                        data: [parseFloat(arrCX[0]), parseFloat(arrCX[1]), parseFloat(arrCX[2]), parseFloat(arrCX[3]), parseFloat(arrCX[4]), parseFloat(arrCX[5]), parseFloat(arrCX[6]), parseFloat(arrCX[7]), parseFloat(arrCX[8]), parseFloat(arrCX[9])]//chartCX0, 0, 0, 0, 0, 0, 0, 300.00, 0, 0 
                    }]
                });
            });
        }
    }
    //pck.init();
    //arrJJ[0], arrJJ[1], arrJJ[2], arrJJ[3], arrJJ[4], arrJJ[5], arrJJ[6], arrJJ[7], arrJJ[8], arrJJ[9]
    //arrSS[0],arrSS[1],arrSS[2],arrSS[3],arrSS[4],arrSS[5],arrSS[6],arrSS[7],arrSS[8],arrSS[9]
    //arrCX[0], arrCX[1], arrCX[2], arrCX[3], arrCX[4], arrCX[5], arrCX[6], arrCX[7], arrCX[8], arrCX[9]
    //parseFloat(arrJJ[0]), parseFloat(arrJJ[1]), parseFloat(arrJJ[2]), parseFloat(arrJJ[3]), parseFloat(arrJJ[4]), parseFloat(arrJJ[5]), parseFloat(arrJJ[6]), parseFloat(arrJJ[7]), parseFloat(arrJJ[8]), parseFloat(arrJJ[9])
    //parseFloat(arrSS[0]), parseFloat(arrSS[1]), parseFloat(arrSS[2]), parseFloat(arrSS[3]), parseFloat(arrSS[4]), parseFloat(arrSS[5]), parseFloat(arrSS[6]), parseFloat(arrSS[7]), parseFloat(arrSS[8]), parseFloat(arrSS[9])
    //parseFloat(arrCX[0]), parseFloat(arrCX[1]), parseFloat(arrCX[2]), parseFloat(arrCX[3]), parseFloat(arrCX[4]), parseFloat(arrCX[5]), parseFloat(arrCX[6]), parseFloat(arrCX[7]), parseFloat(arrCX[8]), parseFloat(arrCX[9])


    window.onload = function () {
        setTimeout(function () {
            pck.init();
        }, 1000);
        
    
    }

  
</script>


</body>
</html>
