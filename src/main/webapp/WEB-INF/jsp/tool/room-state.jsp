<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 显示所有房间状态的界面 --%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>HMS房间状态</title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
</head>
<body>

<%--导航依赖的模块--%>
<!-- 你的HTML代码 Hello layui-->
<script src="/model/layui/layui.js"></script>
<script>
    //导航 依赖的element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>

<%--<script>--%>
    <%--//注意：折叠面板 依赖 element 模块，否则无法进行功能性操作--%>
    <%--layui.use('element', function(){--%>
        <%--var element = layui.element;--%>

        <%--//…--%>
    <%--});--%>
<%--</script>--%>

<%--<script>--%>
    <%--//注意：选项卡 依赖 element 模块，否则无法进行功能性操作--%>
    <%--layui.use('element', function () {--%>
        <%--var element = layui.element;--%>

<%--//…--%>
    <%--});--%>
<%--</script>--%>

<%-- 0.0 导航栏 --%>
<ul class="layui-nav" lay-filter="">
    <li class="layui-nav-item"><a href="">客户开单</a></li>
    <li class="layui-nav-item"><a href="/home/home">订单处理</a></li>
    <li class="layui-nav-item"><a href="/home/checkin">入住登记</a></li>
    <li class="layui-nav-item layui-this"><a href="/home/roomstate1">房间状态</a></li>
    <%--<li class="layui-nav-item"><a href="/home/settleaccounts">订单结算</a></li>--%>
    <%--<li class="layui-nav-item"><a href="/home/systemsettings">系统设置</a></li>--%>
    <li class="layui-nav-item">
        <a href="javascript:;">系统设置</a>
        <%--/home/systemsettings--%>
        <dl class="layui-nav-child"> <!-- 二级菜单 -->
            <dd><a href="/home/toaddroom">添加客房</a></dd>
            <dd><a href="/home/tomodifyroom">修改/删除客房</a></dd>
            <dd><a href="">员工管理</a></dd>
            <dd><a href="">财务管理</a></dd>
        </dl>
    </li>
    <li class="layui-nav-item"><a href="/home/tologinpage">退出系统</a></li>
    <li class="layui-nav-item">
        <a href=""><img src="//t.cn/RCzsdCq" class="layui-nav-img">我</a>
        <dl class="layui-nav-child">
            <dd><a href="javascript:;">修改信息</a></dd>
            <dd><a href="javascript:;">安全管理</a></dd>
            <dd><a href="javascript:;">退出</a></dd>
        </dl>
    </li>
</ul>
<br><br>


<%--个人信息标题--%>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 10px; margin-bottom: 40px;">
    <legend>可查询所有房间的当前状态</legend>
</fieldset>

<%--显示各种房型的当前状态--%>
<div class="layui-collapse">
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">标准单人间</h2>
        <div class="layui-colla-content">
            <%@ include file="reserve-room-detail.jsp"%>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">标准双人间</h2>
        <div class="layui-colla-content">
            <%@ include file="reserve-room-detail.jsp"%>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">豪华单人间</h2>
        <div class="layui-colla-content">
            <%@ include file="reserve-room-detail.jsp"%>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">豪华双人间</h2>
        <div class="layui-colla-content">
            <%@ include file="reserve-room-detail.jsp"%>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">商务套房</h2>
        <div class="layui-colla-content">
            <%@ include file="reserve-room-detail.jsp"%>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">多人普通间</h2>
        <div class="layui-colla-content">
            <%@ include file="reserve-room-detail.jsp"%>
        </div>
    </div>

</div>



</body>
</html>