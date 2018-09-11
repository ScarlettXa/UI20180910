﻿m.plugin.basepath = "/Scripts/mtopt"; m.plugin.hookedit = true; m.plugin.base = function () { var a = m.data.object(); a.elm = null; a.init = function () { }; a.show = function () { m.node(this.elm).show() }; a.hide = function () { m.node(this.elm).hide() }; a.release = function () { m.node(this.elm).remove() }; return a }; m.plugin.lockback = { id: "m_lockback", elm: null, init: function () { var b = document.createElement("div"); b.id = this.id; b.className = "m-lockback"; document.body.insertBefore(b, document.body.childNodes[0]); var a = m.node("#" + this.id); this.elm = a.first(); this.elm.lockback = this; m.node(this.elm).hide(); m.node(this.elm).opacity(28) }, lock: function (a, c) { var e = c ? c : 9999; var b = a ? a : 28; if (this.elm == null) { this.init() } var d = m.node(this.elm); d.css("zIndex", e); d.fadeIn(5, b) }, unLock: function () { m.node(this.elm).hide(5) } }; m.plugin.btns = function (b) { var a = this.base(); a.init = function (f) { var e = m.node(f); e.addClass("m-btns"); this.elm = e.first(); this.elm.btns = this; var c = m.node(".m-btns-btn", this.elm); var d = m.node(".m-btns-list", this.elm); d.css("top", e.height() - 1 + "px"); c.on("mouseover", function () { m.node(this).addClass("m-btns-opt") }); c.on("mouseout", function () { m.node(this).removeClass("m-btns-opt") }) }; a.init(b); return a }; m.plugin.window = function (c, a) { var b = this.base(); b.lock = a; b.init = function (f) { if (m.node("#" + f).count() > 0) { m.node("#" + f).remove() } var e = document.createElement("div"); e.id = f; var d = m.node(e); this.elm = d.first(); this.elm.window = this; d.addClass("m-window"); d.html("<div class='m-window-tit'><div class='m-window-text'></div></div><div class='m-window-close m-window-btn' title='关闭'>×</div><div class='m-window-stg'></div><span class='m-window-opa'></div>"); d.hide(); document.body.insertBefore(e, document.body.childNodes[0]); m.node(".m-window-close", this.elm).click(function () { b.close() }); this.size(350, 150) }; b.size = function (f, d) { this.elm.style.width = f + "px"; this.elm.style.height = d + "px"; this.elm.style.marginLeft = -(f / 2) + "px"; this.elm.style.marginTop = -(d / 2) + "px"; try { m.node(".m-window-stg", this.elm).css("height", (d - m.node(".m-window-opa", this.elm).height() - 28) + "px") } catch (g) { } }; b.title = function (d) { m.node(".m-window-text", this.elm).html(d) }; b.value = function (g, d) { var e = m.node(".m-window-stg", this.elm); if (d == true) { var f = document.createElement("iframe"); f.src = g; f.frameBorder = 0; f.style.width = "100%"; f.style.height = "100%"; e.append(f) } else { e.html(g) } }; b.show = function () { if (this.lock == true) { m.node(this.elm).css("zIndex", 10000); m.plugin.lockback.lock() } else { m.node(this.elm).css("zIndex", "") } m.node(this.elm).fadeIn(5) }; b.hide = function () { if (this.lock == true) { m.plugin.lockback.unLock() } m.node(this.elm).fadeOut(5) }; b.close = function () { if (m.node(this.elm).css("display") != "none") { this.hide(); setTimeout(function () { m.node(this.elm).remove() }, 500) } }; b.opera = function (d) { m.node(".m-window-opa", this.elm).html(d) }; b.init(c); return b }; m.plugin.alert = function (d, a, c) { if (m.isUndefined(m.lag.Space("plugin").m_alert)) { m.lag.Space("plugin").m_alert = m.plugin.window("m_alert", true) } var b = m.lag.Space("plugin").m_alert; b.elm.style.zIndex = 10000; b.title(d); b.value(a); b.opera("<input type='button' value='确定' class='btn-enter m-btn m-btn-main' />"); m.node(".btn-enter", b.elm).click(function () { if (c) { c() } b.close() }); b.show(); return b }; m.plugin.confirm = function (e, a, d, c) { if (m.isUndefined(m.lag.Space("plugin").m_confirm)) { m.lag.Space("plugin").m_confirm = m.plugin.window("m_confirm", true) } var b = m.lag.Space("plugin").m_confirm; b.elm.style.zIndex = 10000; b.title(e); b.value(a); b.opera("<input type='button' value='是' class='btn-yes m-btn m-btn-main' /><input type='button' value='否' class='btn-no m-btn' />"); m.node(".btn-yes", b.elm).click(function () { if (d) { d() } b.close() }); m.node(".btn-no", b.elm).click(function () { if (c) { c() } b.close() }); b.show(); return b }; m.plugin.news = function (e, f, b) { if (m.isUndefined(m.lag.Space("plugin").m_message)) { m.lag.Space("plugin").m_message = m.plugin.window("m_message", b) } var h = m.lag.Space("plugin").m_message; var a = m.node(h.elm); a.addClass("m-news"); h.value("<label>" + e + "</label>"); var d = m.data.string(e); var c = d.toPixelWidth(14, 500) + 20; var g = d.toPixelHeight(14, 500); h.size(c, g); a.css("lineHeight", g + "px"); a.click(function () { h.close() }); if (h.timeout != null) { clearTimeout(h.timeout) } if (m.isNumber(f)) { h.timeout = setTimeout(function () { h.close(); h.timeout = null }, f); h.show() } return h }; m.plugin.backimg = function (c, b) {
    var a = this.base(); a.index = 0; a.imgs = m.data.list(b); a.init = function (h) { var f = m.node(h); f.addClass("m-backimg"); this.elm = f.first(); this.elm.backimg = this; if (f.html().length <= 0) { var e = f.attr("data-src") || ""; m.node(this.elm).html("<img src='' class='m-backimg-pic' /><div class='m-backimg-sad'></div>"); m.node(".m-backimg-pic", this.elm).parm("src", e) } var d = m.node(".m-backimg-pic", this.elm); d.hide(); var g = new Image(); g.onload = function () { d.show(); a.suitSize(); g = null; delete g }; g.src = d.parm("src"); m.event("resize").add(function () { a.suitSize() }) }; a.suitSize = function () {
        var f = m.innerWidth(); var e = m.innerHeight(); var d = m.node(".m-backimg-pic", this.elm); d.size(f + "px", "auto"); if (d.width() <= f) { d.size(f + "px", "auto") } if (d.height() <= e) {
            d.size("auto", e + "px")
        } if (d.width() >= f) { var h = (d.width() - f) / 2; d.css("left", "-" + h + "px") } if (d.height() >= e) { var g = (d.height() - e) / 2; d.css("top", "-" + g + "px") }
    }; a.alt = function (e) { var f = m.random.number(); var d = m.node(".m-backimg-pic", this.elm); this.index = m.isNumber(e) ? e : f.next(this.imgs.count(), -1); var g = this.imgs.get(this.index); d.hide(); var h = new Image(); h.onload = function () { d.fadeIn(5); a.suitSize(); h = null; delete h }; h.src = g; d.parm("src", g) }; a.next = function () { if (this.index < this.imgs.count() - 1) { this.index = this.index + 1; this.alt(this.index) } }; a.back = function () { if (this.index > 0) { this.index = this.index - 1; this.alt(this.index) } }; a.init(c); return a
}; m.plugin.text = function (b) { var a = this.base(); a.filter = true; a.init = function (i) { var h = m.node(i); this.elm = h.first(); this.elm.text = this; h.addClass("m-text"); if (h.html().length <= 0) { var d = h.attr("data-tip") || ""; var c = h.attr("data-tab") || 0; var g = h.attr("data-type") || "text"; var f = h.attr("data-val") || ""; h.html("<label class='m-text-tip'>" + d + "</label><input class='m-text-ipt' tabindex='" + c + "' type='" + g + "' value='" + f + "' />") } var e = m.node(".m-text-ipt", this.elm); e.focus(function () { m.node(a.elm).addClass("m-text-focus"); a.onfocus(a.value()) }); e.blur(function () { if (a.value().length > 0) { m.node(a.elm).addClass("m-text-alert") } else { m.node(a.elm).removeClass("m-text-alert") } m.node(a.elm).removeClass("m-text-focus"); a.onblur(a.value()) }); m.node(".m-text-tip", this.elm).click(function () { m.node(".m-text-ipt", a.elm).focus() }); if (this.value().length > 0) { this.value(this.value()) } this.size(h.width() + "px", h.height() + "px") }; a.onfilter = function (c) { c = m.encry.html.encode(c); return c }; a.focus = function () { m.node(".m-text-ipt", this.elm).focus() }; a.blur = function () { m.node(".m-text-ipt", this.elm).blur() }; a.size = function (d, c) { d = (d == "0px" ? m.node(this.elm).currentCss("width") : d); c = (c == "0px" ? m.node(this.elm).currentCss("height") : c); var e = m.node(".m-text-ipt", this.elm); e.size(d, c); if (e.first().tagName == "input".toUpperCase()) { e.css("lineHeight", c); var f = m.node(".m-text-tip", this.elm); f.css("lineHeight", c) } }; a.tip = function (d) { var c = m.node(".m-text-tip", this.elm); if (m.isUndefined(d)) { return c.html() } else { c.html(d) } }; a.value = function (d) { var c = m.node(".m-text-ipt", this.elm); if (m.isUndefined(d)) { if (this.filter) { return this.onfilter(c.value()) } else { return c.value() } } else { if (d.length > 0) { m.node(this.elm).addClass("m-text-alert") } if (this.filter) { c.value(this.onfilter(d)) } else { c.value(d) } c.blur() } }; a.onblur = function (c) { }; a.onfocus = function (c) { }; a.init(b); return a }; m.plugin.search = function (b) {
    var a = this.base(); a.filter = true; a.items = []; a.oldvalue = ""; a.init = function (i) { var h = m.node(i); this.elm = h.first(); this.elm.search = this; h.addClass("m-search"); if (h.html().length <= 0) { var d = h.attr("data-tip") || ""; var c = h.attr("data-tab") || 0; var g = h.attr("data-type") || "text"; var f = h.attr("data-val") || ""; h.html("<label class='m-search-tip'>" + d + "</label><input class='m-search-ipt' tabindex='" + c + "' type='" + g + "' value='" + f + "' /><div class='m-search-list'></div>") } m.node(".m-search-list", this.elm).hide(); var e = m.node(".m-search-ipt", this.elm); e.focus(function () { var j = a.value(); a.show(); a.onfocus(j); m.node(a.elm).addClass("m-search-focus") }); e.keyup(function () { var j = a.value(); if (a.oldvalue != j, a.value.length > 0) { a.onalert(j) } a.oldvalue = j }); e.blur(function () { var j = a.value(); if (j.length > 0) { m.node(a.elm).addClass("m-search-alert") } else { m.node(a.elm).removeClass("m-search-alert") } m.node(a.elm).removeClass("m-search-focus"); a.hide(); a.onblur(j) }); m.node(".m-search-tip", this.elm).click(function () { m.node(".m-search-ipt", a.elm).focus() }); if (this.value().length > 0) { this.value(this.value()) } this.size(e.width() + "px", e.height() + "px") }; a.onfilter = function (c) { c = m.encry.html.encode(c); return c }; a.focus = function () { m.node(".m-search-ipt", this.elm).focus() }; a.blur = function () { m.node(".m-search-ipt", this.elm).blur() }; a.size = function (e, c) { e = (e == "0px" ? m.node(this.elm).currentCss("width") : e); c = (c == "0px" ? m.node(this.elm).currentCss("height") : c); var d = m.node(".m-search-list", this.elm); d.css("marginTop", c); d.css("width", e); var f = m.node(".m-search-ipt", this.elm); f.size(e, c); var g = m.node(".m-search-tip", this.elm); g.css("lineHeight", c); g.css("lineHeight", (g.height() + 1) + "px") }; a.show = function () { m.node(".m-search-list", a.elm).show() }; a.hide = function () { setTimeout(function () { m.node(".m-search-list", a.elm).hide() }, 120) }; a.tip = function (d) { var c = m.node(".m-search-tip", this.elm); if (m.isUndefined(d)) { return c.html() } else { c.html(d) } }; a.value = function (d) { var c = m.node(".m-search-ipt", this.elm); if (m.isUndefined(d)) { if (this.filter) { return this.onfilter(c.parm("value")) } else { return c.parm("value") } } else { if (this.filter) { c.parm("value", this.onfilter(d)) } else { c.parm("value", d) } if (d.length > 0) { m.node(a.elm).addClass("m-search-alert") } else { m.node(a.elm).removeClass("m-search-alert") } } }; a.add = function (e, d) {
        var c = document.createElement("li"); c.innerHTML = e; c.setAttribute("data", d); c.onclick = function () { var f = this.getAttribute("data"); if (f != null && f.length > 0) { a.value(f); a.onclick(f) } }; this.items.push(c); m.node(".m-search-list", this.elm).append(c)
    }; a.clear = function () { this.items = []; m.node(".m-search-list li", this.elm).remove() }; a.remove = function (e) { for (var c in this.items) { var d = this.items[c]; if (d.innerHTML == e) { m.node(d).remove() } else { continue } } }; a.onalert = function (c) { }; a.onclick = function (c) { }; a.onblur = function (c) { }; a.onfocus = function (c) { }; a.init(b); return a
}; m.plugin.select = function (c, a) { var b = this.base(); b.selected = null; b.init = function (l, d) { var k = m.node(l); k.addClass("m-select"); this.elm = k.first(); this.elm.select = this; if (k.html().length <= 0) { k.append("<input class='m-select-ipt' type='text' readonly='true' value=''/><ul class='m-select-list'></ul><div class='m-select-btn'><div class='m-select-btn-icon'></div></div>") } var j = m.node(".m-select-list", this.elm); var f = m.node(".m-select-btn", this.elm); var h = m.node(".m-select-ipt", this.elm); j.hide(); f.click(function () { if (j.css("display") == "none") { b.show() } else { b.hide() } }); h.focus(function () { b.show() }); if (m.isUndefined(d) == false && d != null) { for (var e in d) { var g = d[e]; this.add(g[0], g[1]) } } this.size(k.width(), k.height()) }; b.size = function (h, d) { var e = m.node(this.elm); e.size(h + "px", d + "px"); var i = m.node(".m-select-ipt", this.elm); i.css("lineHeight", d + "px"); i.size(((h - 6) > 0 ? (h - 6) : 0) + "px", (d > 0 ? d - 1 : 0) + "px"); var j = m.node(".m-select-list", this.elm); j.css("width", h + "px"); j.css("marginTop", (d + 1) + "px"); var f = m.node(".m-select-btn", this.elm); f.css("marginLeft", (h - 17) + "px"); f.css("height", d + "px"); var g = m.node(".m-select-btn-icon", this.elm); g.css("marginTop", d / 2 - 1 + "px") }; b.add = function (h, g) { var e = null; if (mtopt.isArray(h)) { e = h } else { e = []; e.push([h, g]) } for (var f in e) { var h = e[f][0]; var g = e[f][1]; var d = document.createElement("li"); d.setAttribute("data", g); d.innerHTML = h; d.title = h; d.onclick = function () { m.node(".m-select-ipt", b.elm).value(this.innerHTML); b.onchange(this.innerHTML, this.getAttribute("data")); b.selected = m.data.object(); b.selected.text = this.innerHTML; b.selected.value = this.getAttribute("data"); b.hide() }; m.node(".m-select-list", this.elm).append(d); if (this.count() <= 1) { this.value(g) } } }; b.remove = function (g) { var e = m.node("li", this.elm).nodes; for (var f in e) { var d = e[f]; if (d.getAttribute("data") == g) { m.node(d).remove() } } }; b.value = function (g) { if (g) { var e = m.node("li", this.elm).nodes; for (var f in e) { var d = e[f]; if (d.getAttribute("data") == g) { m.node(".m-select-ipt", this.elm).value(d.innerHTML); this.selected = m.data.object(); this.selected.text = d.innerHTML; this.selected.value = d.getAttribute("data") } } } else { if (this.selected == null) { return null } else { return this.selected.value } } }; b.count = function () { return m.node(".m-select-list li", this.elm).count() }; b.show = function () { m.node(".m-select-list").hide(); m.node(".m-select-list", this.elm).fadeIn(5); this.onshow() }; b.hide = function () { m.node(".m-select-list", this.elm).fadeOut(5) }; b.clear = function () { m.node(".m-select-ipt", this.elm).value(""); m.node(".m-select-list", this.elm).html("") }; b.length = function () { return m.node(".m-select-list", this.elm).count() }; b.onchange = function (e, d) { }; b.onshow = function () { }; b.init(c, a); return b }; m.plugin.radio = function (b) { var a = this.base(); a.init = function (g) { var f = m.node(g); this.elm = f.first(); this.elm.radio = this; f.addClass("m-radio"); if (f.html().length <= 0) { var d = f.attr("data-name") || ""; var c = f.attr("data-checked") || null; f.html("<input type='radio' class='m-radio-ipt' name='" + d + "'" + (c != null ? " checked='" + c + "'" : "") + "/>") } f.click(function () { m.node(".m-radio-ipt", a.elm).first().blur() }); var e = m.node(".m-radio-ipt", this.elm); e.change(function () { var i = m.node(".m-radio-ipt", a.elm); var h = i.first().checked; a.value(h); a.onchange(h) }); if (e.first().checked == true) { f.addClass("m-radio-opt") } }; a.onchange = function () { return m.node(".m-radio-ipt", this.elm).first().checked }; a.value = function (g) { var f = m.node(".m-radio-ipt", this.elm); if (m.isUndefined(g) == false) { f.first().checked = g; if (f.first().checked == true) { var d = f.first().name; if (m.isUndefined(d) == false && d.length > 0) { var h = mSelect(".m-radio", document); for (var e in h) { var c = mSelect(".m-radio-ipt", h[e])[0]; if (c.type == "radio" && m.isUndefined(c.name) == false && c.name == d) { c.checked = false; m.node(c.parentNode).removeClass("m-radio-opt") } } } f.first().checked = true; m.node(this.elm).addClass("m-radio-opt") } } else { return f.first().checked } }; a.init(b); return a }; m.plugin.checkbox = function (b) {
    var a = this.base(); a.init = function (f) { var e = m.node(f); this.elm = e.first(); this.elm.checkbox = this; e.addClass("m-checkbox"); if (e.html().length <= 0) { var d = e.attr("data-checked") || null; e.html("<input type='checkbox' class='m-checkbox-ipt'" + (d != null ? " checked='" + d + "'" : "") + "/>") } var c = m.node(".m-checkbox-ipt", this.elm); this.value(c.first().checked); e.click(function () { m.node(".m-checkbox-ipt", a.elm).first().blur() }); c.change(function () { var g = m.node(".m-checkbox-ipt", a.elm).first().checked; a.value(g); a.onchange(g) }) }; a.value = function (d) { var c = m.node(".m-checkbox-ipt", this.elm); if (m.isUndefined(d)) { return c.first().checked } else { c.first().checked = d; if (c.first().checked == false) { m.node(this.elm).removeClass("m-checkbox-opt") } else { m.node(this.elm).addClass("m-checkbox-opt") } } }; a.onchange = function (c) { };
    a.init(b); return a
}; m.plugin.date = function (b) { var a = this.base(); a.year = 1900; a.month = 1; a.day = 1; a.init = function (c) { var l = m.node(c); this.elm = l.first(); this.elm.date = this; l.addClass("m-date"); var j = l.attr("data-val") || ""; var f = null; var g = mDate(); if (l.html().length <= 0) { l.html("<input type='text' value='' readonly='readonly' class='m-date-ipt' /><div class='m-date-tab'><label class='m-date-hide' title='关闭'>×</label><div class='m-date-selt'><select class='m-date-year'></select><label>年</label><select class='m-date-month'></select><label>月</label></div><div class='m-date-tit'></div><div class='m-date-items'><div/></div>"); f = j.length > 0 ? mDate(j) : mDate() } else { m.node(".m-date-tab", this.elm).html("<label class='m-date-hide' title='关闭'>×</label><div class='m-date-selt'><select class='m-date-year'></select><label>年</label><select class='m-date-month'></select><label>月</label></div><div class='m-date-tit'></div><div class='m-date-items'><div/>"); f = mDate(j || m.node(".m-date-ipt", this.elm).value()) } this.year = m.parse.toInteger(f.toFormatString("yyyy")); this.month = m.parse.toInteger(f.toFormatString("mm")); this.day = m.parse.toInteger(f.toFormatString("dd")); var s = function () { var v = this.parentNode.parentNode; var t = m.parse.toInteger(m.node(".m-date-year", v).value()); var i = m.parse.toInteger(m.node(".m-date-month", v).value()); var u = m.parse.toInteger(m.node(".m-date-bitem-opt", v).html()); a.value(t + "/" + i + "/" + u) }; var d = m.node(".m-date-tit", this.elm); var r = ["一", "二", "三", "四", "五", "六", "日"]; for (var k in r) { var n = document.createElement("span"); n.className = "m-date-bitem"; n.innerHTML = r[k]; d.append(n) } var o = m.node(".m-date-year", this.elm).first(); var h = m.parse.toInteger(g.toFormatString("yyyy")); for (var k = -1; k < 105; k++) { var n = document.createElement("option"); n.text = h - k; n.value = h - k; o.add(n) } o.onchange = s; o.value = h; var e = m.node(".m-date-month", this.elm).first(); for (var k = 1; k <= 12; k++) { var n = document.createElement("option"); n.text = k; n.value = k; e.add(n) } e.onchange = s; e.value = this.month; var q = m.node(".m-date-ipt", this.elm); q.focus(function () { a.show() }); var p = m.node(".m-date-hide", this.elm); p.click(function () { a.hide() }); m.node(".m-date-tab", this.elm).hide(); a.value(this.year + "/" + this.month + "/" + this.day, true) }; a.value = function (e, d) { if (e) { var c = mDate(e); this.year = m.parse.toInteger(c.toFormatString("yyyy")); this.month = m.parse.toInteger(c.toFormatString("mm")); this.day = m.parse.toInteger(c.toFormatString("dd")); if (d != false) { this.refurbish(this.year, this.month, this.day) } m.node(".m-date-year", this.elm).value(this.year); m.node(".m-date-month", this.elm).value(this.month); m.node(".m-date-ipt", this.elm).value(this.year + "-" + this.month + "-" + this.day) } else { return new Date(this.year + "/" + this.month + "/" + this.day) } }; a.refurbish = function (o, l, p) { var j = o + "/" + l + "/" + p; var q = mDate(j); var k = q.addMonth(-1).getMonthDay(); var h = q.getMonthDay(); var d = q.addMonth(1).getMonthDay(); var f = mDate(o + "/" + l + "/1").value.getDay(); f = (f == 0) ? 7 : f; var n = m.node(".m-date-items", this.elm); n.html(""); for (var g = 1; g < f; g++) { var e = (k - g + 1); var c = document.createElement("span"); c.className = "m-date-bitem m-date-bitem-las"; c.setAttribute("data-date", mDate(o + "/" + l + "/1").addMonth(-1).toFormatString("yyyy/mm/" + e)); c.onclick = function () { a.value(this.getAttribute("data-date")) }; c.innerHTML = e; n.prepend(c) } for (var g = 1; g <= h; g++) { var c = document.createElement("span"); if (p == g) { c.className = "m-date-bitem m-date-bitem-opt" } else { c.className = "m-date-bitem" } c.setAttribute("data-date", o + "/" + l + "/" + g); c.onclick = function () { a.value(this.getAttribute("data-date")); a.hide() }; c.innerHTML = g; n.append(c) } for (var g = 1; g <= (7 - (h + f - 1) % 7); g++) { var c = document.createElement("span"); c.className = "m-date-bitem m-date-bitem-las"; c.setAttribute("data-date", mDate(o + "/" + l + "/1").addMonth(1).toFormatString("yyyy/mm/" + g)); c.onclick = function () { a.value(this.getAttribute("data-date")) }; c.innerHTML = g; n.append(c) } a.onchange(a.value()) }; a.onchange = function (c) { }; a.show = function () { var c = m.node(".m-date-tab", this.elm); if (c.css("display") == "none") { c.fadeIn(5) } }; a.hide = function () { m.node(".m-date-tab", this.elm).fadeOut(5) }; a.init(b); return a }; m.plugin.img = function (b) {
    var a = this.base(); a.mousex = null; a.mousey = null; a.init = function (e) {
        var k = m.node(e); k.addClass("m-img"); this.elm = k.first(); this.elm.img = this; var f = k.attr("data-src") || ""; var g = k.attr("data-url") || ""; var p = k.attr("data-tip") || ""; var c = k.attr("data-tip-show") || ""; var i = k.attr("data-lazy") || 1; i = m.parse.toInteger(i); if (k.html().length <= 0) { var l = "<img src='" + m.plugin.basepath + "/img/cut/load.gif' class='m-img-pic' />"; if (g.length > 0) { l = "<a href='" + g + "'>" + l + "</a>" } if (p.length > 0) { if (c.length > 0) { l += "<div class='m-img-tip'>" + p + "</div><div class='m-img-bak'></div>" } else { l += "<div class='m-img-tip' style='display:none;'>" + p + "</div><div class='m-img-bak' style='display:none;'></div>" } } k.html(l) } else { k.attr("data-src", m.node(".m-img-pic", this.elm).parm("src")) } var j = m.node(".m-img-pic", this.elm); if (i == 1) {
            var d = j.first(); j.attr("src_back", f); if (d.getBoundingClientRect().top > m.innerHeight()) {
                var h = function () {
                    var q = j.first(); var r = q.getBoundingClientRect().top;
                    var s = m.innerHeight(); if (r <= s) { q.src = j.attr("src_back"); if (!q.isload) { j.fadeIn(5) } q.isload = true; setTimeout(function () { mtopt.event("scroll").remove(h) }, 100) }
                }; mtopt.event("scroll").add(h)
            } else { d.src = f }
        } else { j.parm("src", f) } if (!c.length > 0) { k.mouseout(function () { m.node(".m-img-tip", a.elm).hide(); m.node(".m-img-bak", a.elm).hide() }); k.mouseover(function () { m.node(".m-img-tip", a.elm).show(); m.node(".m-img-bak", a.elm).show() }) } j.hide(); var o = new Image(); var n = function () { j.show(); a.size(); if ((j.width() * 1.5) < j.height()) { k.mousemove(function (C) { C = C || window.event; var z = C.x || C.pageX; var v = C.y || C.pageY; if (a.mousey == null) { a.mousey = v } if (a.mousex == null) { a.mousex = z } var u = m.node(".m-img-pic", a.elm); if (a.mousey > v) { var r = m.node(a.elm).height(); var q = u.height(); var w = u.css("top"); w = m.data.string(w).replace("px", ""); w = m.parse.toInteger(w); if (w < 0) { w += (q / r) * (a.mousey - v); if (w > 0 || m.isNaN(w)) { w = 0 } u.css("top", w + "px") } } else { var r = m.node(a.elm).height(); var q = u.height(); var w = u.css("top"); w = m.data.string(w).replace("px", ""); w = m.parse.toInteger(w); var t = -(u.height() - m.node(a.elm).height()); if (w > t) { w -= (q / r) * (v - a.mousey); if (w < t || m.isNaN(w)) { w = t } u.css("top", w + "px") } } if (a.mousex > z) { var A = m.node(a.elm).width(); var B = u.width(); var s = u.css("left"); s = m.data.string(s).replace("px", ""); s = m.parse.toInteger(s); if (s < 0) { s += (B / A) * (a.mousex - z); if (s > 0 || m.isNaN(s)) { s = 0 } u.css("left", s + "px") } } else { var A = m.node(a.elm).width(); var B = u.width(); var s = u.css("left"); s = m.data.string(s).replace("px", ""); s = m.parse.toInteger(s); var t = -(u.width() - m.node(a.elm).width()); if (s > t || m.isNaN(s)) { s -= (B / A) * (z - a.mousex); if (s < t || m.isNaN(s)) { s = t } u.css("left", s + "px") } } a.mousex = z; a.mousey = v }) } o = null; delete o }; j.on("load", n); o.onload = n; o.src = j.parm("src")
    }; a.size = function (e, c) { e = e || m.node(a.elm).width(); c = c || m.node(a.elm).height(); m.node(this.elm).size(e + "px", c + "px"); var d = m.node(".m-img-pic", this.elm); d.size(e + "px", "auto"); if (d.width() <= e) { d.size(e + "px", "auto") } if (d.height() <= c) { d.size("auto", c + "px") } if (d.width() >= e) { var g = (d.width() - e) / 2; d.css("left", "-" + g + "px") } if (d.height() >= c) { var f = (d.height() - c) / 2; d.css("top", "-" + f + "px") } }; a.img = function (d) { var c = m.node(".m-img-pic", this.elm); if (m.isUndefined(d)) { return c.parm("src") } else { c.hide(); var f = new Image(); var e = function () { c.fadeIn(5); a.size(); f = null; delete f }; f.onload = e; c.parm("src", d); f.src = d } }; a.tip = function (c) { var c = m.node(".m-img-tip", this.elm); if (m.isUndefined(src)) { return c.first().innerHTML } else { c.html(c) } }; a.init(b); return a
}; m.plugin.menu = function (b) { var a = this.base(); a.init = function (d) { var c = m.node(d); this.elm = c.first(); this.elm.menu = this; c.addClass("m-menu"); m.node(".m-menu-btn", this.elm).find(function (e) { e.onclick = function () { m.node(".m-menu-btn", a.elm).removeClass("m-menu-opt"); m.node(e).addClass("m-menu-opt"); var g = m.node("a", e); var f = g.parm("href"); if (f.length > 0) { g.parm("href", "javascript:void(0);"); m.redirect(f) } } }); m.node(".m-menu-list", this.elm).find(function (e) { m.node(e).on("click mouseover", function () { m.node("ul", e).css("display", "block") }); m.node(e).mouseout(function () { m.node("ul", e).hide() }) }) }; a.init(b); return a }; m.plugin.views = function (b) { var a = this.base(); a.init = function (e) { var d = m.node(e); this.elm = d.first(); this.elm.views = this; d.addClass("m-views"); var c = d.attr("data-defindex") || 0; if (d.html().length <= 0) { d.html("<ul class='m-views-heads'></ul><div class='m-views-frames'></div>") } m.node(".m-views-head", this.elm).find(function (f) { f.onclick = function () { var h = m.node(f); var g = h.attr("data-clickframe"); m.node(".m-views-head", a.elm).removeClass("m-views-head-opt"); m.node(".m-views-frame", a.elm).find(function (j) { var i = m.node(j); if (i.attr("data-framename") == g) { i.fadeIn(5) } else { i.hide() } }); h.addClass("m-views-head-opt") } }); if (this.count() > 0) { this.show(c) } }; a.show = function (c) { m.node(mSelect(".m-views-head", this.elm)[c]).click() }; a.size = function (d, c) { m.node(".m-views-frame", this.elm).size(d, c) }; a.add = function (i, e) { var g = m.node(".m-views-head", this.elm); var f = m.node(".m-views-frames", this.elm); var d = "m-views-frame" + (g.count() + 1); var c = document.createElement("li"); c.setAttribute("data-clickframe", d); c.className = "m-views-head"; c.innerHTML = "<h3>" + i + "</h3>"; c.onclick = function () { var k = m.node(c); var j = k.attr("data-clickframe"); m.node(".m-views-head", a.elm).removeClass("m-views-head-opt"); m.node(".m-views-frame", a.elm).find(function (n) { var l = m.node(n); if (l.attr("data-framename") == j) { l.fadeIn(5) } else { l.hide() } }); k.addClass("m-views-head-opt") }; var h = null; if (m.isElement(e) == true) { h = e } else { h = document.createElement("div"); h.className = "m-views-frame"; h.innerHTML = e } h.setAttribute("data-framename", d); if (g.count() > 0) { m.node(h).hide() } else { m.node(c).addClass("m-views-head-opt") } g.append(c); f.append(h) }; a.remove = function (c) { m.node(m.node(".m-views-head", this.elm).nodes[c]).remove(); m.node(m.node(".m-views-frame", this.elm).nodes[c]).remove() }; a.count = function () { return m.node(".m-views-head", this.elm).count() }; a.clear = function () { for (var c = 0; c < this.count(); c++) { this.remove(c) } }; a.init(b); return a }; m.plugin.list = function (b) {
    var a = this.base(); a.init = function (d) {
        var c = m.node(d);
        this.elm = c.first(); this.elm.list = this; this.items = m.node(".m-list-item", this.elm).nodes; c.addClass("m-list")
    }; a.count = function () { return this.items.length }; a.append = function (d) { var c = document.createElement("div"); m.node(c).append(d); m.node(c).fadeIn(8); m.node(c).addClass("m-list-item"); m.node(this.elm).append(c); this.items.push(c); this.onadd(c); return c }; a.prepend = function (d) { var c = document.createElement("div"); m.node(c).append(d); m.node(c).fadeIn(8); m.node(c).addClass("m-list-item"); m.node(this.elm).prepend(c); this.items.push(c); this.onadd(c); return c }; a.reomove = function (c) { var d = m.node(".m-list-item", this.elm).nodes[c]; this.onremove(d); m.node(d).remove() }; a.clear = function () { for (var c in this.items) { var d = this.items[c]; m.node(d).remove() } this.onclear() }; a.onadd = function (c) { }; a.onremove = function (c) { }; a.onclear = function () { }; a.init(b); return a
}; m.plugin.paging = function (d, b, a) { var c = this.base(); c.page = b || 1; c.size = a || 10; c.pagefirst = 1; c.pagelast = c.pagingsize; c.selected = 1; c.init = function (f) { var e = m.node(f); this.elm = e.first(); e.addClass("m-paging"); this.elm.paging = this; this.setpaging() }; c.setpaging = function (n, j) { this.page = n || this.page; this.size = j || this.size; n = this.page; j = this.size; this.page = (n <= 0 || !m.isNumber(n)) ? 1 : n; this.size = (j <= 0 || !m.isNumber(j)) ? 1 : j; this.page = (this.page % 1) != 0 ? (mInteger(this.page / 1).get()) + 1 : this.page; var h = ""; if (this.selected > 1) { h += "<a class='m-paging-item m-paging-btn m-paging-back'><</a>" } var f = this.size * m.parse.toInteger(this.selected / this.size); if (this.selected == this.pagefirst) { f = this.selected - this.size + 1; f = f <= 0 ? 1 : f } else { if (this.selected == this.pagelast) { f = this.selected; f = f > this.page ? this.page : f } else { if (this.selected == 1) { f = 1 } else { if (this.selected == this.page) { f = this.page - (this.page % this.size) } } } } this.pagefirst = f; this.pagelast = f + this.size - 1; for (var g = 0; g < this.size && (f + g) <= this.page; g++) { if ((f + g) <= 0 || (f + g) > this.page) { continue } else { if (this.selected == (f + g)) { h += "<a class='m-paging-item m-paging-opt'>" + (f + g) + "</a>" } else { h += "<a class='m-paging-item'>" + (f + g) + "</a>" } } } if (this.selected < this.page - (this.page % this.size) + 1) { h += "<a class='m-paging-item m-paging-btn m-paging-next'>></a>" } h += "<label class='m-paging-mess'></label>"; m.node(this.elm).html(h); var l = m.node(".m-paging-item", this.elm); var e = m.node(".m-paging-back", this.elm); var k = m.node(".m-paging-next", this.elm); l.find(function (i) { i.setAttribute("data", i.innerHTML) }); l.click(function () { c.selected = m.parse.toInteger(this.getAttribute("data")); c.setpaging(); c.onclick(c.selected, c.page) }); e.click(function () { if (c.selected > 1) { c.selected -= 1; c.setpaging(); c.onclick(c.selected, c.page, c.size) } }); k.click(function () { if (c.selected < c.page) { c.selected += 1; c.setpaging(); c.onclick(c.selected, c.page) } }) }; c.setmessage = function (e) { var f = m.node(".m-paging-mess", this.elm); if (e) { f.html(e) } else { return f.html() } }; c.onclick = function (e, f) { }; c.init(d); return c }; m.plugin.morelist = function (b) { var a = this.base(); a.interval = null; a.value = null; a.automax = 5; a.init = function (e) { var d = m.node(e); d.addClass("m-morelist"); this.elm = d.first(); this.elm.morelist = this; if (d.html().length <= 0) { d.html("<div class='m-morelist-items'></div><div class='m-morelist-mores'>查看更多…</div>") } var c = m.node(".m-morelist-mores", this.elm); c.click(function () { a.onmore(a) }); this.start() }; a.count = function () { return m.node(".m-morelist-item", this.elm).count() }; a.append = function (e, d) { var c = document.createElement(d || "div"); m.node(c).append(e); m.node(c).fadeIn(8); m.node(c).addClass("m-morelist-item"); m.node(".m-morelist-items", this.elm).append(c); this.onadd(c); return c }; a.prepend = function (d) { var c = document.createElement("div"); m.node(c).append(d); m.node(c).fadeIn(8); m.node(c).addClass("m-morelist-item"); m.node(".m-morelist-items", this.elm).prepend(c); this.onadd(c); return c }; a.reomove = function (c) { var d = m.node(".m-morelist-item", this.elm).nodes[c]; m.node(d).remove() }; a.clear = function () { m.node(".m-morelist-item", this.elm).remove(); this.onclear() }; a.start = function () { if (this.interval == null) { this.interval = setInterval(function () { var e = m.node(".m-morelist-mores", a.elm).first().getBoundingClientRect().top; var d = document.documentElement.clientHeight; if (e <= d && a.count() < a.automax) { m.node(".m-morelist-mores", a.elm).click() } }, 500) } var c = m.node(".m-morelist-mores", this.elm); c.removeClass("m-morelist-mores-end"); c.html("查看更多") }; a.end = function () { try { clearInterval(this.interval); this.interval = null } catch (d) { } var c = m.node(".m-morelist-mores", this.elm); c.addClass("m-morelist-mores-end"); c.html("加载完毕") }; a.onmore = function (c) { }; a.onadd = function (c) { }; a.onremove = function (c) { }; a.onclear = function () { }; a.init(b); return a }; m.plugin.file = function (b) {
    var a = this.base(); a.init = function (d) {
        var c = m.node(d); this.elm = c.first(); this.elm.file = this; c.addClass("m-file"); if (c.html().length <= 0) { c.html("<input type='file' class='m-file-file' name='file' /><input type='text' class='m-file-ipt' readonly='true' /><input type='button' class='m-file-btn m-btn' value='选择'>") } m.node(".m-file-btn", this.elm).click(function () { a.click() }); m.node(".m-file-file", this.elm).change(function () {
            var e = m.node(".m-file-ipt", this.elm);
            var f = a.src(); if (f == null || f.length <= 0) { e.value("已选择") } else { e.value(f) } a.onchange(f)
        })
    }; a.src = function () { var d = m.node(".m-file-file", this.elm).first(); var c; if (m.browser.isIE()) { d.select(); d.blur(); try { c = document.selection.createRange().text } catch (f) { } } else { if (m.browser.isFirefox()) { c = window.URL.createObjectURL(d.files.item(0)) } else { if (m.browser.isChrome()) { c = window.URL.createObjectURL(d.files.item(0)) } } } return c }; a.click = function () { m.node(".m-file-file", this.elm).first().click() }; a.getfile = function () { return m.node(".m-file-file", this.elm).first() }; a.onchange = function (c) { }; a.init(b); return a
}; m.plugin.progress = function (d, a, b) { var c = this.base(); c.count = a || 100; c.index = b || 0; c.init = function (h) { var g = m.node(h); this.elm = g.first(); this.elm.className = "m-progress"; this.elm.progress = this; var e = g.attr("data-index") || 0; var f = g.attr("data-count") || 100; this.count = f; this.index = e; g.html("<div class='m-progress-bar'></div>"); this.value(this.index) }; c.value = function (e) { if (m.isUndefined(e)) { return ths.index } else { var f = m.node(this.elm).width(); this.index = e; e = (this.index / this.count); if (e >= 1) { e = 1; this.index = this.count; this.onstart() } else { if (e <= 0) { e = 0; this.index = 0; this.onend() } } m.node(".m-progress-bar", this.elm).size(e * 100 + "%", "100%"); this.onchange(e) } }; c.onstart = function () { }; c.onend = function () { }; c.onchange = function (e) { }; c.init(d); return c }; m.event("ready").add(function () { m.node(".m-backimg").find(function (a) { if (!a.backimg) { m.plugin.backimg(a) } }); m.node(".m-text").find(function (a) { if (!a.text) { m.plugin.text(a) } }); m.node(".m-select").find(function (a) { if (!a.select) { m.plugin.select(a) } }); m.node(".m-search").find(function (a) { if (!a.search) { m.plugin.search(a) } }); m.node(".m-btns").find(function (a) { if (!a.btns) { m.plugin.btns(a) } }); m.node(".m-date").find(function (a) { if (!a.date) { m.plugin.date(a) } }); m.node(".m-radio").find(function (a) { if (!a.radio) { m.plugin.radio(a) } }); m.node(".m-file").find(function (a) { if (!a.file) { m.plugin.file(a) } }); m.node(".m-img").find(function (a) { if (!a.img) { m.plugin.img(a) } }); m.node(".m-menu").find(function (a) { if (!a.menu) { m.plugin.menu(a) } }); m.node(".m-list").find(function (a) { if (!a.list) { m.plugin.list(a) } }); m.node(".m-morelist").find(function (a) { if (!a.morelist) { m.plugin.morelist(a, 1000, 5) } }); m.node(".m-views").find(function (a) { if (!a.views) { m.plugin.views(a) } }); m.node(".m-paging").find(function (a) { if (!a.paging) { m.plugin.paging(a, 1000, 5) } }); m.node(".m-progress").find(function (a) { if (!a.progress) { m.plugin.progress(a) } }) });