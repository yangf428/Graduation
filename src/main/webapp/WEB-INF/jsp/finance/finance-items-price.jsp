<%-- 物品价格一览表 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>价目表</title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
    <script src="/model/layui/layui.js"></script>
    <style>
        .box{
            height: 1010px;
        }
        .box-left {
            width: 500px;
            border: 5px solid #a6e1ec;
            margin-left: 160px;
            margin-top: 20px;
            float: left;
        }

        .box-right {
            width: 500px;
            margin-left: 10px;
            margin-top: 20px;
            border: 5px solid #a6e1ec;
            float: left;
        }

        .box h2 {
            margin-top: 10px;
            margin-bottom: 15px;
            font-family: 幼圆;
        }
        .box p{
            margin-left: 20px;
            font-size: 16px;
            margin-bottom: 6px;
        }
        .box span{
            margin-left:20px;
        }
        .box1 img{
            width: 700px;
            margin-left: 320px;
            opacity: 0.8;
            margin-bottom: 100px;
            border: 5px solid #a6e1ec;
        }
    </style>
</head>

<body>
<%-- 导航栏 --%>
<%@ include file="../page/head-page1.jsp" %>
<%-- 标题页面 --%>
<h2 style="margin-left:600px;margin-bottom:20px;margin-top:20px;">物品价目一览表</h2>

<%--<div class="box">--%>
    <%--&lt;%&ndash;左边的盒子&ndash;%&gt;--%>
    <%--<div class="box-left">--%>
        <%--<h2>价目表</h2>--%>
        <%--<p>方便面</p>--%>
        <%--<p>泡鸡爪</p>--%>
        <%--<p>牛肉干</p>--%>
        <%--<p>酒鬼花生</p>--%>
        <%--<p>薯片</p>--%>
        <%--<p>王老吉</p>--%>
        <%--<p>红牛</p>--%>
        <%--<p>矿泉水</p>--%>
        <%--<p>可乐</p>--%>
        <%--<p>雪碧</p>--%>
        <%--<p>开心果</p>--%>
        <%--<p>纸巾</p>--%>
        <%--<p>豆干</p>--%>
        <%--<p>杨梅</p>--%>
    <%--</div>--%>

    <%--&lt;%&ndash;右边的盒子&ndash;%&gt;--%>
    <%--<div class="box-right">--%>
        <%--<h2>赔偿价目表</h2>--%>
    <%--</div>--%>
<%--</div>--%>

<div class="box1">
    <img src="img/finance-items-price.jpg">
</div>

<%@include file="../page/foot-page.jsp"%>
<%-- 添加物品按键 --%>
<%--<a href="" class="layui-btn" style="margin-left:500px;width: 300px;margin-top:15px;">修改价格</a>--%>

</body>
</html>
