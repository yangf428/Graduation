<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 页面头部，导航栏页面 --%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <%--<title>HMS房间入住登记</title>--%>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
</head>


<body>
<%-- 0.0 导航栏 --%>
<ul class="layui-nav" lay-filter="" id="layui-nav">
    <li class="layui-nav-item" id="li1"><a href="">客户开单</a></li>
    <li class="layui-nav-item layui-this" id="li2"><a href="/home/home">订单处理</a></li>
    <li class="layui-nav-item" id="li3"><a href="/home/checkin">入住登记</a></li>
    <li class="layui-nav-item" id="li4"><a href="/home/roomstate1">房间状态</a></li>
    <li class="layui-nav-item" id="li5">
        <a href="javascript:;">系统设置</a>
        <%--/home/systemsettings--%>
        <dl class="layui-nav-child"> <!-- 二级菜单 -->
            <dd><a href="/home/toaddroom">添加客房</a></dd>
            <dd><a href="/home/tomodifyroom">修改/删除客房</a></dd>
            <dd><a href="">员工管理</a></dd>
            <dd><a href="">财务管理</a></dd>
        </dl>
    </li>
    <li class="layui-nav-item" id="li6"><a href="/home/tologinpage">退出系统</a></li>
    <li class="layui-nav-item" id="li7">
        <a href=""><img src="//t.cn/RCzsdCq" class="layui-nav-img">我</a>
        <dl class="layui-nav-child">
            <dd><a href="javascript:;">修改信息</a></dd>
            <dd><a href="javascript:;">安全管理</a></dd>
            <dd><a href="javascript:;">退出</a></dd>
        </dl>
    </li>
</ul>
<br><br>

</body>

<%--导航所需要加载的模块--%>
<script src="/model/layui/layui.js"></script>
<script>
    //导航 依赖的element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>

<%-- 鼠标点击事件添加layui-this样式 --%>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
<%--<script type="text/javascript" defer="defer">--%>
    <%--//  啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊--%>
    <%--// var lin = document.getElementsByTagName("li");--%>
    <%--$(function changeStyle(ele) {--%>
        <%--$("#layui-nav li.layui-nav-item").bind("click",function () {--%>
            <%--// $(this).siblings().removeClass("layui-this");--%>
            <%--// $(this).addClass("layui-nav-item layui-this");--%>
            <%--var liAry = document.getElementsByTagName("li");--%>
            <%--var liLen = liAry.length;--%>
            <%--var liId = ele.id;--%>
            <%--for (var i=0; i<liLen; i++){--%>
                <%--if(liAry[i].id == liId)--%>
                <%--{--%>
                    <%--liAry[i].style.backgroundColor="#cccccc";--%>
                <%--}--%>
                <%--else--%>
                <%--{--%>
                    <%--liAry[i].style.backgroundColor="white";--%>
                <%--}--%>
            <%--}--%>

        <%--})--%>
    <%--})--%>

<%--</script>--%>


</html>
