/****************************************************************************主框架代码库*/
var engine = {
    //通用ajax
    ajax: {
        //身份验证
        check: {
            //发送验证码
            sendccode: function (loginname, callback) {
                var ajx = m.ajax("/service/check.asmx/sendccode", null, function (xml) {
                    var obj = m.parse.xmlToJson(m.parse.toXml(xml));
                    //比对错误编码
                    callback(m.parse.toInteger(obj.HttpResult.error.text));
                }, true)
                ajx.data.add("loginname", loginname);
                ajx.send();
            }
        },
        /*
        [获取地区信息-函数]
        参数：
        id      编号
        callback回调函数
        */
        place: function (root, callback) {
            var ajax = m.ajax("/service/common.asmx/place", null, function (xml) {
                var obj = mtopt.parse.xmlToJson(mtopt.parse.toXml(xml));
                var jso = m.json.getObject(obj.HttpResult.data.text);
                callback(jso);
            }, true);
            ajax.data.add("root", root);
            ajax.send();
        },
        /*
        [获取语言信息-函数]
        参数：
        id      编号
        callback回调函数
        */
        language: function (id, callback) {
            var ajax = m.ajax("/service/common.asmx/language", null, function (xml) {
                var obj = mtopt.parse.xmlToJson(mtopt.parse.toXml(xml));
                var jso = m.json.getObject(obj.HttpResult.data.text);
                callback(jso);
            }, true);
            ajax.data.add("id", id);
            ajax.send();
        },
        /*
        [获取行业信息-函数]
        参数：
        id      编号
        callback回调函数
        */
        trade: function (id, callback) {
            var ajax = m.ajax("/service/common.asmx/trade", null, function (xml) {
                var obj = mtopt.parse.xmlToJson(mtopt.parse.toXml(xml));
                var jso = m.json.getObject(obj.HttpResult.data.text);
                callback(jso);
            }, true);
            ajax.data.add("id", id);
            ajax.send();
        },
        /*
        [获取银行信息-函数]
        参数：
        id      编号
        callback回调函数
        */
        bank: function (id, callback) {
            var ajax = m.ajax("/service/common.asmx/bank", null, function (xml) {
                var obj = mtopt.parse.xmlToJson(mtopt.parse.toXml(xml));
                var jso = m.json.getObject(obj.HttpResult.data.text);
                callback(jso);
            }, true);
            ajax.data.add("id", id);
            ajax.send();
        },
        /*
        [获取快递信息-函数]
        参数：
        id      编号
        callback回调函数
        */
        express: function (id, callback) {
            var ajax = m.ajax("/service/common.asmx/express", null, function (xml) {
                var obj = mtopt.parse.xmlToJson(mtopt.parse.toXml(xml));
                var jso = m.json.getObject(obj.HttpResult.data.text);
                callback(jso);
            }, true);
            ajax.data.add("id", id);
            ajax.send();
        },
        /*
        [获取会员等级-函数]
        参数：
        id      编号
        callback回调函数
        */
        memberlevel: function (id, callback) {
            var ajax = m.ajax("/service/common.asmx/memberlevel", null, function (xml) {
                var obj = mtopt.parse.xmlToJson(mtopt.parse.toXml(xml));
                var jso = m.json.getObject(obj.HttpResult.data.text);
                callback(jso);
            }, true);
            ajax.data.add("id", id);
            ajax.send();
        },
        /*
        [获取会员市场-函数]
        参数：
        id      编号
        callback回调函数
        */
        memberarea: function (id, callback) {
            var ajax = m.ajax("/service/common.asmx/memberarea", null, function (xml) {
                var obj = mtopt.parse.xmlToJson(mtopt.parse.toXml(xml));
                var jso = m.json.getObject(obj.HttpResult.data.text);
                callback(jso);
            }, true);
            ajax.data.add("id", id);
            ajax.send();
        },
        /*
        [获取订单状态-函数]
        参数：
        id      编号
        callback回调函数
        */
        orderstate: function (id, callback) {
            var ajax = m.ajax("/service/common.asmx/orderstate", null, function (xml) {
                var obj = mtopt.parse.xmlToJson(mtopt.parse.toXml(xml));
                var jso = m.json.getObject(obj.HttpResult.data.text);
                callback(jso);
            }, true);
            ajax.data.add("id", id);
            ajax.send();
        }
    },
    //语言
    language: function (id) {
        m.ajax('/Service/language.ashx?id=' + id, null, function (content) {
            mpi.news("切换语言中，请稍候....", 3000, true);
            setTimeout(function () { m.reload() }, 750);
        }).send();
    },
    //搜索
    search: function () {
        var text = m.node(".mn-header-search .text").value();
        m.redirect('/store?keyword=' + text);
    },
    //加载
    init: function () {
        m.node(".mn-body-menu .classify").on("click mouseover", function () {
            m.node(".mn-body-menu .classify ul").show();
        });
        m.node(".mn-body-menu .classify").mouseout(function () {
            m.node(".mn-body-menu .classify ul").hide();
        });
        m.node(".mn-header-search .text").keydown(function (event) {
            var e = event || window.event || arguments.callee.caller.arguments[0];
            if (e.keyCode == 13) {
                engine.search();
            }
        });
        m.node(".mn-header-search .text").value(m.encry.url.decode(m.queryString("keyword")));
    }
}
m.event("ready").add(function () {
    engine.init();
    $(".mn-suspend").mouseover(function () {
        $(this).stop();
        $(this).animate({ width: 160 }, 400);
    })
    $(".mn-suspend").mouseout(function () {
        $(this).stop();
        $(this).animate({ width: 40 }, 400);
    });
});
