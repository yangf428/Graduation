<%-- 导航栏 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <%--<title>HMS房间入住登记</title>--%>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
    <script src="/model/layui/layui.js"></script>
    <style type="text/css">
        .layui-nav-item {
            width: 180px;
            line-height: 70px;
        }

        /*.layui-nav *{*/
        /*font-size: 17px;*/
        /*}*/

    </style>
</head>


<body>
<%-- 0.0 导航栏 --%>
<ul class="layui-nav">

    <%--客房类型--%>
    <li class="layui-nav-item" style="margin-left:260px;">
        <a href="javascript:;">客房管理</a>
        <%--/home/systemsettings--%>
        <dl class="layui-nav-child"> <!-- 二级菜单 -->
            <dd><a href="/toaddroom">添加客房</a></dd>
            <dd><a href="/roomselect">搜索客房</a></dd>
            <dd><a href="/roomstate">查看客房状态</a></dd>
        </dl>
    </li>

    <%-- 预定管理 --%>
    <li class="layui-nav-item">
        <a href="javascript:;">订单管理</a>
        <%--/home/systemsettings--%>
        <dl class="layui-nav-child"> <!-- 二级菜单 -->
            <dd><a href="/tohome">订单查询</a></dd>
            <dd><a href="/checkin">入住登记</a></dd>
            <dd><a href="">订单结账</a></dd>
        </dl>
    </li>

    <%--财务管理--%>
    <li class="layui-nav-item">
        <a href="/financetoselect">财务管理</a>
        <%--/home/systemsettings--%>
        <dl class="layui-nav-child"> <!-- 二级菜单 -->
            <dd><a href="/financetoselect">收支管理</a></dd>
            <dd><a href="/financeitemsprice">物品价位</a></dd>
        </dl>
    </li>

    <%-- 员工管理 --%>
    <%--<li class="layui-nav-item">--%>
    <%--<a href="/searchAllAdmin">员工管理</a>--%>
    <%--&lt;%&ndash;/home/systemsettings&ndash;%&gt;--%>
    <%--&lt;%&ndash;<dl class="layui-nav-child"> <!-- 二级菜单 -->&ndash;%&gt;--%>
    <%--&lt;%&ndash;<dd><a href="">员工编号</a></dd>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<dd><a href="/searchAllAdmin">员工信息</a></dd>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</dl>&ndash;%&gt;--%>
    <%--</li>--%>


    <%-- 客房管理 --%>
    <%--<li class="layui-nav-item">--%>
    <%--<a href="javascript:;">客房管理</a>--%>
    <%--&lt;%&ndash;/home/systemsettings&ndash;%&gt;--%>
    <%--<dl class="layui-nav-child"> <!-- 二级菜单 -->--%>
    <%--<dd><a href="">客房登记</a></dd>--%>
    <%--&lt;%&ndash;<dd><a href="/roomstate">客房查询</a></dd>&ndash;%&gt;--%>
    <%--<dd><a href="">客房结账</a></dd>--%>
    <%--</dl>--%>
    <%--</li>--%>

    <%--系统设置--%>
    <li class="layui-nav-item">
        <a href="javascript:;">酒店管理</a>
        <%--/home/systemsettings--%>
        <dl class="layui-nav-child"> <!-- 二级菜单 -->
            <%--<a href="">酒店管理</a>--%>
            <dd><a href="/searchAllAdmin">员工管理</a></dd>
            <dd><a href="/hotelinfo">酒店信息</a></dd>
        </dl>
    </li>

    <%--系统设置--%>
    <%--<li class="layui-nav-item">--%>
    <%--<a href="javascript:;">酒店信息</a>--%>
    <%--&lt;%&ndash;/home/systemsettings&ndash;%&gt;--%>
    <%--&lt;%&ndash;<dl class="layui-nav-child"> <!-- 二级菜单 -->&ndash;%&gt;--%>
    <%--&lt;%&ndash;<a href="/searchAllAdmin">员工管理</a>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<dd><a href="">权限设置</a></dd>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<dd><a href="">初始化</a></dd>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<dd><a href="">酒店信息</a></dd>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</dl>&ndash;%&gt;--%>
    <%--</li>--%>

    <%-- 个人中心 --%>
    <li class="layui-nav-item" style="width: 110px">
        <a href="">${sessionScope.admin.adminName}<span class="layui-badge-dot"></span></a>
        <dl class="layui-nav-child"> <!-- 二级菜单 -->
            <dd><a href="/selfcenter">修改信息</a></dd>
            <dd><a href="/selftochangepass">改密</a></dd>
            <dd><a href="/logout">退了</a></dd>
        </dl>
    </li>

    </div>
</ul>
<br><br>

</body>
<%--导航所需要加载的模块--%>
<script>
    //导航 依赖的element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>
</html>
