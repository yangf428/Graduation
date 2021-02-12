<%-- 显示所有房间状态的页面--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>HMS房间状态</title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
    <script src="js/jquery-3.4.1.min.js"/>
    <script>
        $("li").click(function () {
            $(this).toggleClass("layui-this");
        })
    </script>
    <style>
        /*这个是左边信息栏*/
        .box-left {
            margin-left: 100px;
            padding-left: 30px;
            padding-top: 30px;
            width: 260px;
            height: 985px;
            border: 4px solid lightblue;
            float: left;
        }

        .box-right {
            margin-left: 10px;
            padding-left: 10px;
            padding-top: 10px;
            width: 900px;
            height: 1000px;
            border: 4px solid lightblue;
            float: left;
        }
    </style>
</head>

<body>
<%--导航栏--%>
<%@ include file="../page/head-page1.jsp" %>

<h2 style="margin-left:600px;margin-bottom:20px;font-size:22px;">房间状态</h2>
<hr style="margin-bottom:35px;"/>

<div type="display:inline">
    <div class="box-left">
        <h3 style="margin-left: 85px; font-size: 17px; margin-bottom:20px;">相关信息</h3><br>
        <p>房间编号：${someRoom.roomId}</p><br>
        <p>房间状态：${someRoom.roomState}</p><br>
        <p>房间类型：${someRoom.roomType}</p><br>
        <p>房间面积：${someRoom.roomArea}</p><br>
        <p>房间可容纳：${someRoom.roomContain}</p><br>
        <p>是否有窗：${someRoom.roomWifi}</p><br>
        <p>是否有空调：${someRoom.roomWifi}</p><br>
        <p>是否有WIFI：${someRoom.roomWifi}</p><br>
        <p>单价:${someRoom.roomPrice}</p><br>
    </div>

    <div class="box-right">
        <%--下面是所有房子哈哈哈 --%>
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
            <ul class="layui-tab-title" style="margin-left:50px;">
                <li><a href="/roomstate">全部</a></li>
                <li><a href="/roomstate?roomType=标准单人间">标准单人间</a></li>
                <li><a href="/roomstate?roomType=标准双人间">标准双人间</a></li>
                <li><a href="/roomstate?roomType=豪华单人间">豪华单人间</a></li>
                <li><a href="/roomstate?roomType=豪华双人间">豪华双人间</a></li>
                <li><a href="/roomstate?roomType=商务套房">商务套房</a></li>
                <li><a href="/roomstate?roomType=多人普通间">多人普通间</a></li>
            </ul>
            <div class="layui-tab-content">
                <%--全部--%>
                <div class="layui-tab-item layui-show">
                    <%@ include file="house-list.jsp" %>
                </div>

                <%--标准单人间--%>
                <div class="layui-tab-item">
                    <%@ include file="house-list.jsp" %>
                </div>

                <%--豪华单人间--%>
                <div class="layui-tab-item">
                    <%@ include file="house-list.jsp" %>
                </div>

                <%--豪华双人间--%>
                <div class="layui-tab-item">
                    <%@ include file="house-list.jsp" %>
                </div>

                <%--商务套房--%>
                <div class="layui-tab-item">
                    <%@ include file="house-list.jsp" %>
                </div>

                <%--多人普通间--%>
                <div class="layui-tab-item">
                    <%@ include file="house-list.jsp" %>
                </div>
            </div>
        </div>
    </div>
</div>
<br><br>
<%--<%@include file="../page/foot-page.jsp"%>--%>
</body>

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

<script>
    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>

</html>
