<%-- 所有的房子状态 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="keywords" content="JS代码,图片特效,JS广告代码,JS特效代码" />
    <meta name="description" content="" />
    <title>房子状态</title>
    <link rel="stylesheet" href="/css/style1.css">
    <%--<script type="text/javascript" src="/js/jquery.min.js"></script>--%>
    <%--<script type="text/javascript" src="/js/home.min.js"></script>--%>
    <%-- layui --%>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
    <script src="/model/layui/layui.js"></script>
</head>

<body>
<%--存储房间的状态--%>
<!-- 代码 开始 -->
<div class="content">
    <ul id="da-thumbs" class="da-thumbs">
        <c:forEach items="${list}" var="room">
        <li>
            <%--<form method="get" action="/someroomstate">--%>
                <a href="/someroomstate?roomId=${room.roomId}" >
                    <img src="/img/room.JPG" style="width: 90px; height: 90px;">
                </a>
            <%--</form>--%>
            <div style="width: 100px; height: 48px">
            <%-- 判断房间状态 --%>
                <c:if test="${room.roomState == 'empty'}">
                    <span class="layui-badge layui-bg-green" style="margin-left:20px;margin-top:5px;">空</span>
                </c:if>
                <c:if test="${room.roomState == 'stay'}">
                    <span class="layui-badge layui-bg-orange" style="margin-left:20px;margin-top:5px;">待</span>
                </c:if>
                <c:if test="${room.roomState == 'full'}">
                    <span class="layui-badge" style="margin-left:20px;margin-top:5px;">满</span>
                </c:if>
                <%--<span class="layui-badge layui-bg-green" style="margin-left:20px;margin-top:5px;">空</span>--%>
                <span>${room.roomId}</span><br>
                <span style="margin-left:15px;">${room.roomType}</span>
            </div>
        </li>
        </c:forEach>
    </ul>
</div>
        <%--<li>--%>
            <%--<a href="#" >--%>
                <%--<img src="/img/room.JPG" style="width: 90px; height: 90px;">--%>
            <%--</a>--%>
            <%--<div style="width: 100px; height: 48px">--%>
                <%--<span class="layui-badge layui-bg-green" style="margin-left:20px;margin-top:5px;">空</span>--%>
                <%--<span>A501</span><br>--%>
                <%--<span style="margin-left:15px;">豪华单人间</span>--%>
            <%--</div>--%>
        <%--</li>--%>
        <%--<li>--%>
            <%--<a href="#" >--%>
                <%--<img src="/img/room.JPG" style="width: 90px; height: 90px;">--%>
            <%--</a>--%>
            <%--<div style="width: 100px; height: 48px">--%>
                <%--<span class=" layui-badge" style="margin-left:20px; margin-top:5px;">满</span>--%>
                <%--<span>A501</span><br>--%>
                <%--<span style="margin-left:15px;">豪华单人间</span>--%>
            <%--</div>--%>
        <%--</li>--%>
        <%--<li>--%>
            <%--<a href="#" >--%>
                <%--<img src="/img/room.JPG" style="width: 90px; height: 90px;">--%>
            <%--</a>--%>
            <%--<div style="width: 100px; height: 48px">--%>
                <%--<span class="layui-badge layui-bg-orange" style="margin-left:20px; margin-top:5px;">待</span>--%>
                <%--<span>A501</span><br>--%>
                <%--<span style="margin-left:15px;">豪华单人间</span>--%>
            <%--</div>--%>
        <%--</li>--%>
        <%--<li>--%>
            <%--<a href="#" >--%>
                <%--<img src="/img/room.JPG" style="width: 90px; height: 90px;">--%>
            <%--</a>--%>
            <%--<div style="width: 100px; height: 48px">--%>
                <%--<span class="layui-badge layui-bg-green" style="margin-left:20px;margin-top:5px;">空</span>--%>
                <%--<span>A501</span><br>--%>
                <%--<span style="margin-left:15px;">豪华单人间</span>--%>
            <%--</div>--%>
        <%--</li>--%>

        <%--&lt;%&ndash;哈哈哈&ndash;%&gt;--%>
        <%--<li>--%>
            <%--<a href="#" >--%>
                <%--<img src="/img/room.JPG" style="width: 90px; height: 90px;">--%>
            <%--</a>--%>
            <%--<div style="width: 100px; height: 48px">--%>
                <%--<span class="layui-badge layui-bg-green" style="margin-left:20px;margin-top:5px;">空</span>--%>
                <%--<span>A501</span><br>--%>
                <%--<span style="margin-left:15px;">豪华单人间</span>--%>
            <%--</div>--%>

        <%--</li>--%>
        <%--<li>--%>
            <%--<a href="#" >--%>
                <%--<img src="/img/room.JPG" style="width: 90px; height: 90px;">--%>
            <%--</a>--%>
            <%--<div style="width: 100px; height: 48px">--%>
                <%--<span class="layui-badge layui-bg-green" style="margin-left:20px;margin-top:5px;">空</span>--%>
                <%--<span>A501</span><br>--%>
                <%--<span style="margin-left:15px;">豪华单人间</span>--%>
            <%--</div>--%>
        <%--</li>--%>
        <%--<li>--%>
            <%--<a href="#" >--%>
                <%--<img src="/img/room.JPG" style="width: 90px; height: 90px;">--%>
            <%--</a>--%>
            <%--<div style="width: 100px; height: 48px">--%>
                <%--<span class="layui-badge" style="margin-left:20px; margin-top:5px;">满</span>--%>
                <%--<span>A501</span><br>--%>
                <%--<span style="margin-left:15px;">豪华单人间</span>--%>
            <%--</div>--%>
        <%--</li>--%>
        <%--<li>--%>
            <%--<a href="#" >--%>
                <%--<img src="/img/room.JPG" style="width: 90px; height: 90px;">--%>
            <%--</a>--%>
            <%--<div style="width: 100px; height: 48px">--%>
                <%--<span class="layui-badge layui-bg-orange" style="margin-left:20px; margin-top:5px;">待</span>--%>
                <%--<span>A501</span><br>--%>
                <%--<span style="margin-left:15px;">豪华单人间</span>--%>
            <%--</div>--%>
        <%--</li>--%>
        <%--<li>--%>
            <%--<a href="#" >--%>
                <%--<img src="/img/room.JPG" style="width: 90px; height: 90px;">--%>
            <%--</a>--%>
            <%--<div style="width: 100px; height: 48px">--%>
                <%--<span class="layui-badge layui-bg-green" style="margin-left:20px;margin-top:5px;">空</span>--%>
                <%--<span>A501</span><br>--%>
                <%--<span style="margin-left:15px;">豪华单人间</span>--%>
            <%--</div>--%>
        <%--</li>--%>

    <%--<li class="subscribe">--%>
            <%--<a href="#" >--%>
                <%--<h2>订阅<span>职位</span></h2>--%>
                <%--<img src="/img/subscribe.png" alt="订阅职位">--%>
            <%--</a>--%>
        <%--</li>--%>

<!-- 代码 结束 -->
</body>
</html>
