﻿<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title></title>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="format-detection" content="email=no" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="Cache-Control" content="no-cache" max-age="0"/>
    <meta http-equiv="Expires" content="0"/>
    <meta name="renderer" content="webkit">
	<!-- 网站图标 -->
	<link rel="icon" href="${pageContext.request.contextPath}/public/img/favicon.ico" type="image/x-icon" />
	<link href="${pageContext.request.contextPath}/css/h5_detail.css" rel="stylesheet" type="text/css"/>
    <script>(function(e,g){var d=e.document;var h=d.documentElement;var a=1;var c;var b=g.flexible||(g.flexible={});h.setAttribute("data-dpr",1);function f(){var i=h.getBoundingClientRect().width;if(i/a>=1024){i=1024*a}var j=i/10;h.style.fontSize=j+"px";b.rem=e.rem=j}e.addEventListener("resize",function(){clearTimeout(c);c=setTimeout(f,300)},false);e.addEventListener("pageshow",function(i){if(i.persisted){clearTimeout(c);c=setTimeout(f,300)}},false);if(d.readyState==="complete"){d.body.style.fontSize=12*a+"px"}else{d.addEventListener("DOMContentLoaded",function(i){d.body.style.fontSize=12*a+"px"},false)}f();b.dpr=a;b.refreshRem=f;b.rem2px=function(j){var i=parseFloat(j)*this.rem;if(typeof j==="string"&&j.match(/rem$/)){i+="px"}return i};b.px2rem=function(j){var i=parseFloat(j)/this.rem;if(typeof j==="string"&&j.match(/px$/)){i+="rem"}return i}})(window,window.lib||(window.lib={}));</script>
    <script>(function(){function d(o,k){var p;k=k||{};this.trackingClick=false;this.trackingClickStart=0;this.targetElement=null;this.touchStartX=0;this.touchStartY=0;this.lastTouchIdentifier=0;this.touchBoundary=k.touchBoundary||10;this.layer=o;this.tapDelay=k.tapDelay||200;this.tapTimeout=k.tapTimeout||700;if(d.notNeeded(o)){return}function q(l,i){return function(){return l.apply(i,arguments)}}var j=["onMouse","onClick","onTouchStart","onTouchMove","onTouchEnd","onTouchCancel"];var n=this;for(var m=0,h=j.length;m<h;m++){n[j[m]]=q(n[j[m]],n)}if(b){o.addEventListener("mouseover",this.onMouse,true);o.addEventListener("mousedown",this.onMouse,true);o.addEventListener("mouseup",this.onMouse,true)}o.addEventListener("click",this.onClick,true);o.addEventListener("touchstart",this.onTouchStart,false);o.addEventListener("touchmove",this.onTouchMove,false);o.addEventListener("touchend",this.onTouchEnd,false);o.addEventListener("touchcancel",this.onTouchCancel,false);if(!Event.prototype.stopImmediatePropagation){o.removeEventListener=function(l,s,i){var r=Node.prototype.removeEventListener;if(l==="click"){r.call(o,l,s.hijacked||s,i)}else{r.call(o,l,s,i)}};o.addEventListener=function(r,s,l){var i=Node.prototype.addEventListener;if(r==="click"){i.call(o,r,s.hijacked||(s.hijacked=function(t){if(!t.propagationStopped){s(t)}}),l)}else{i.call(o,r,s,l)}}}if(typeof o.onclick==="function"){p=o.onclick;o.addEventListener("click",function(i){p(i)},false);o.onclick=null}}var c=navigator.userAgent.indexOf("Windows Phone")>=0;var b=navigator.userAgent.indexOf("Android")>0&&!c;var g=/iP(ad|hone|od)/.test(navigator.userAgent)&&!c;var e=g&&(/OS 4_\d(_\d)?/).test(navigator.userAgent);var f=g&&(/OS [6-7]_\d/).test(navigator.userAgent);var a=navigator.userAgent.indexOf("BB10")>0;d.prototype.needsClick=function(h){switch(h.nodeName.toLowerCase()){case"button":case"select":case"textarea":if(h.disabled){return true}break;case"input":if((g&&h.type==="file")||h.disabled){return true}break;case"label":case"iframe":case"video":return true}return(/\bneedsclick\b/).test(h.className)};d.prototype.needsFocus=function(h){switch(h.nodeName.toLowerCase()){case"textarea":return true;case"select":return !b;case"input":switch(h.type){case"button":case"checkbox":case"file":case"image":case"radio":case"submit":return false}return !h.disabled&&!h.readOnly;default:return(/\bneedsfocus\b/).test(h.className)}};d.prototype.sendClick=function(i,j){var h,k;if(document.activeElement&&document.activeElement!==i){document.activeElement.blur()}k=j.changedTouches[0];h=document.createEvent("MouseEvents");h.initMouseEvent(this.determineEventType(i),true,true,window,1,k.screenX,k.screenY,k.clientX,k.clientY,false,false,false,false,0,null);h.forwardedTouchEvent=true;i.dispatchEvent(h)};d.prototype.determineEventType=function(h){if(b&&h.tagName.toLowerCase()==="select"){return"mousedown"}return"click"};d.prototype.focus=function(h){var i;if(g&&h.setSelectionRange&&h.type.indexOf("date")!==0&&h.type!=="time"&&h.type!=="month"){i=h.value.length;h.setSelectionRange(i,i)}else{h.focus()}};d.prototype.updateScrollParent=function(i){var j,h;j=i.fastClickScrollParent;if(!j||!j.contains(i)){h=i;do{if(h.scrollHeight>h.offsetHeight){j=h;i.fastClickScrollParent=h;break}h=h.parentElement}while(h)}if(j){j.fastClickLastScrollTop=j.scrollTop}};d.prototype.getTargetElementFromEventTarget=function(h){if(h.nodeType===Node.TEXT_NODE){return h.parentNode}return h};d.prototype.onTouchStart=function(j){var h,k,i;if(j.targetTouches.length>1){return true}h=this.getTargetElementFromEventTarget(j.target);k=j.targetTouches[0];if(g){i=window.getSelection();if(i.rangeCount&&!i.isCollapsed){return true}if(!e){if(k.identifier&&k.identifier===this.lastTouchIdentifier){j.preventDefault();return false}this.lastTouchIdentifier=k.identifier;this.updateScrollParent(h)}}this.trackingClick=true;this.trackingClickStart=j.timeStamp;this.targetElement=h;this.touchStartX=k.pageX;this.touchStartY=k.pageY;if((j.timeStamp-this.lastClickTime)<this.tapDelay){j.preventDefault()}return true};d.prototype.touchHasMoved=function(h){var j=h.changedTouches[0],i=this.touchBoundary;if(Math.abs(j.pageX-this.touchStartX)>i||Math.abs(j.pageY-this.touchStartY)>i){return true}return false};d.prototype.onTouchMove=function(h){if(!this.trackingClick){return true}if(this.targetElement!==this.getTargetElementFromEventTarget(h.target)||this.touchHasMoved(h)){this.trackingClick=false;this.targetElement=null}return true};d.prototype.findControl=function(h){if(h.control!==undefined){return h.control}if(h.htmlFor){return document.getElementById(h.htmlFor)}return h.querySelector("button, input:not([type=hidden]), keygen, meter, output, progress, select, textarea")};d.prototype.onTouchEnd=function(j){var l,k,i,n,m,h=this.targetElement;if(!this.trackingClick){return true}if((j.timeStamp-this.lastClickTime)<this.tapDelay){this.cancelNextClick=true;return true}if((j.timeStamp-this.trackingClickStart)>this.tapTimeout){return true}this.cancelNextClick=false;this.lastClickTime=j.timeStamp;k=this.trackingClickStart;this.trackingClick=false;this.trackingClickStart=0;if(f){m=j.changedTouches[0];h=document.elementFromPoint(m.pageX-window.pageXOffset,m.pageY-window.pageYOffset)||h;h.fastClickScrollParent=this.targetElement.fastClickScrollParent}i=h.tagName.toLowerCase();if(i==="label"){l=this.findControl(h);if(l){this.focus(h);if(b){return false}h=l}}else{if(this.needsFocus(h)){if((j.timeStamp-k)>100||(g&&window.top!==window&&i==="input")){this.targetElement=null;return false}this.focus(h);this.sendClick(h,j);if(!g||i!=="select"){this.targetElement=null;j.preventDefault()}return false}}if(g&&!e){n=h.fastClickScrollParent;if(n&&n.fastClickLastScrollTop!==n.scrollTop){return true}}if(!this.needsClick(h)){j.preventDefault();this.sendClick(h,j)}return false};d.prototype.onTouchCancel=function(){this.trackingClick=false;this.targetElement=null};d.prototype.onMouse=function(h){if(!this.targetElement){return true}if(h.forwardedTouchEvent){return true}if(!h.cancelable){return true}if(!this.needsClick(this.targetElement)||this.cancelNextClick){if(h.stopImmediatePropagation){h.stopImmediatePropagation()}else{h.propagationStopped=true}h.stopPropagation();h.preventDefault();return false}return true};d.prototype.onClick=function(h){var i;if(this.trackingClick){this.targetElement=null;this.trackingClick=false;return true}if(h.target.type==="submit"&&h.detail===0){return true}i=this.onMouse(h);if(!i){this.targetElement=null}return i};d.prototype.destroy=function(){var h=this.layer;if(b){h.removeEventListener("mouseover",this.onMouse,true);h.removeEventListener("mousedown",this.onMouse,true);h.removeEventListener("mouseup",this.onMouse,true)}h.removeEventListener("click",this.onClick,true);h.removeEventListener("touchstart",this.onTouchStart,false);h.removeEventListener("touchmove",this.onTouchMove,false);h.removeEventListener("touchend",this.onTouchEnd,false);h.removeEventListener("touchcancel",this.onTouchCancel,false)};d.notNeeded=function(i){var h;var l;var k;var j;if(typeof window.ontouchstart==="undefined"){return true}l=+(/Chrome\/([0-9]+)/.exec(navigator.userAgent)||[,0])[1];if(l){if(b){h=document.querySelector("meta[name=viewport]");if(h){if(h.content.indexOf("user-scalable=no")!==-1){return true}if(l>31&&document.documentElement.scrollWidth<=window.outerWidth){return true}}}else{return true}}if(a){k=navigator.userAgent.match(/Version\/([0-9]*)\.([0-9]*)/);if(k[1]>=10&&k[2]>=3){h=document.querySelector("meta[name=viewport]");if(h){if(h.content.indexOf("user-scalable=no")!==-1){return true}if(document.documentElement.scrollWidth<=window.outerWidth){return true}}}}if(i.style.msTouchAction==="none"||i.style.touchAction==="manipulation"){return true}j=+(/Firefox\/([0-9]+)/.exec(navigator.userAgent)||[,0])[1];if(j>=27){h=document.querySelector("meta[name=viewport]");if(h&&(h.content.indexOf("user-scalable=no")!==-1||document.documentElement.scrollWidth<=window.outerWidth)){return true}}if(i.style.touchAction==="none"||i.style.touchAction==="manipulation"){return true}return false};d.attach=function(i,h){return new d(i,h)};if(typeof define==="function"&&typeof define.amd==="object"&&define.amd){define(function(){return d})}else{if(typeof module!=="undefined"&&module.exports){module.exports=d.attach;module.exports.FastClick=d}else{window.FastClick=d}}}());</script>
    <script>document.addEventListener("touchstart",function(){},false);document.addEventListener("DOMContentLoaded",function(){window.FastClick&&FastClick.attach(document.body)},false);</script>    <script src="${pageContext.request.contextPath}/phosphorus/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/phosphorus/jquery.simulate.js"></script>
    <script src="${pageContext.request.contextPath}/phosphorus/jszip.js"></script>
    <script src="${pageContext.request.contextPath}/phosphorus/rgbcolor.js"></script>
    <script src="${pageContext.request.contextPath}/phosphorus/StackBlur.js"></script>
    <script src="${pageContext.request.contextPath}/phosphorus/canvg.js"></script>
    <script src="${pageContext.request.contextPath}/phosphorus/util.js"></script>
    <script src="${pageContext.request.contextPath}/phosphorus/IO.js"></script>
    <script src="${pageContext.request.contextPath}/phosphorus/Base.js"></script>
    <script src="${pageContext.request.contextPath}/phosphorus/Stage.js"></script>
    <script src="${pageContext.request.contextPath}/phosphorus/Sprite.js"></script>
    <script src="${pageContext.request.contextPath}/phosphorus/Costume.js"></script>
    <script src="${pageContext.request.contextPath}/phosphorus/Sound.js"></script>
    <script src="${pageContext.request.contextPath}/phosphorus/Watcher.js"></script>
    <script src="${pageContext.request.contextPath}/phosphorus/P.js"></script>
</head>
<body>
<div id="app"></div>


 


<script>
    // 服务器时间
    window.serverTimeDiff = 0;

    window.serverTime = 1508834757073;

   //@if(Auth::check())  这是登陆后的json
    //window.webUser = {"loginId": "oP4xHuL5J6JWNeUzDFwchxfWcQ7I","enable": true,"state": 2,"id": 1,"smallFaceUrl": "\//edu-image.nosdn.127.net/F5F53925B5E4F799D7FFB532F04582EE.png","uid": 1,"corpUser": false,"lgmd": "pcw","personalUrlPrefix": "http://kada.163.com/u/","nickName": "{{Auth::user()->name}}","accountType": 0,"loginType": 6,"sid": "c77c4fe6bf7e4a37839c24dc44f76cdb","largeFaceUrl": "\//edu-image.nosdn.127.net/F5F53925B5E4F799D7FFB532F04582EE.png"};
    //@endif
    window.pageData = {"projectSize": 0,"projectUrl": 'http://www.maomi.xn--fiqs8s/${projectUrl}',"collected": false,"sourcePrivate": 0,"mode":${phoneMode},"id": ${projectId},"state": 2,"viewCount": ${browseNum},"modifiable": true,"isSplit": 0,"authorId": 1,"userId": 1,"inContest": false,"parentId": 0,"tags": "100","imgUrl": "http://www.maomi.xn--fiqs8s/${resourcesUrl}","deleted": 0,"thumbUped": false,"authorName": "${createUserName}","name": "${projectName}","projectId": 1,"thumbUpCount": 64,"desc": "${projectDescription}"};


</script>

<script src="${pageContext.request.contextPath}/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/js/h5_detail.js"></script>
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        var currurl = decodeURIComponent(location.href.split('#')[0]);

        //ajax注入权限验证
        $.ajax({
            url : "${pageContext.request.contextPath}/share",
            dataType : 'json',
            data : {
            	url:"http://www.maomiyibian.com/${projectUrl}"
            },
            complete : function(XMLHttpRequest, textStatus) {},
            error : function(XMLHttpRequest, textStatus, errorThrown) {
                alert("发生错误：" + errorThrown);
            },
            success : function(res) {
                var appId = res.appId;
                var nonceStr = res.nonceStr;
                var jsapi_ticket = res.jsapi_ticket;
                var timestamp = res.timestamp;
                var signature = res.signature;
                // alert(appId +" " + nonceStr +" "+jsapi_ticket+" "+timestamp+" "+signature);
                wx.config({
                    debug : false, //开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
                    appId : appId, //必填，公众号的唯一标识
                    timestamp : timestamp, // 必填，生成签名的时间戳
                    nonceStr : nonceStr, //必填，生成签名的随机串
                    signature : signature, // 必填，签名，见附录1
                    jsApiList : [ 'onMenuShareAppMessage', 'onMenuShareTimeline' ] //必填，需要使用的JS接口列表，所有JS接口列表 见附录2
                }); // end wx.config


                wx.ready(function() {
                    wx.onMenuShareAppMessage({
                        title : '分享好友标题', // 分享标题
                        desc : '分享好友描述', // 分享描述
                        link : currurl, // 分享链接，该链接域名或路径必须与当前页面对应的公众号JS安全域名一致
                        imgUrl : 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1505419265109&di=cc30743d364e5ae89172c62a662e1321&imgtype=0&src=http%3A%2F%2Fpic.qqtn.com%2Fup%2F2017-6%2F14973136731543515.jpg', // 分享图标
                        type : '', // 分享类型,music、video或link，不填默认为link
                        dataUrl : '', // 如果type是music或video，则要提供数据链接，默认为空
                        success : function() {
                            // 用户确认分享后执行的回调函数
                            // alert('share successful');
                        },
                        cancel : function() {
                            // 用户取消分享后执行的回调函数
                            // alert('share cancel');
                        }
                    }); // end onMenuShareAppMessage


                    wx.onMenuShareTimeline({
                        title : '分享朋友圈标题', // 分享标题
                        link : currurl, // 分享链接，该链接域名或路径必须与当前页面对应的公众号JS安全域名一致
                        imgUrl : 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1505419265109&di=cc30743d364e5ae89172c62a662e1321&imgtype=0&src=http%3A%2F%2Fpic.qqtn.com%2Fup%2F2017-6%2F14973136731543515.jpg', // 分享图标
                        success : function() {
                            // 用户确认分享后执行的回调函数
                        },
                        cancel : function() {
                            // 用户取消分享后执行的回调函数
                        }
                    }); // end onMenuShareTimeline
                }); // end ready

                wx.error(function(res) {
                    // config信息验证失败会执行error函数，如签名过期导致验证失败，具体错误信息可以打开config的debug模式查看，也可以在返回的res参数中查看，对于SPA可以在这里更新签名。
                    alert('error');
                });
            } // end success
        }); // end ajax

    });  // end document

</script>

</body>
</html>

