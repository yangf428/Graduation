<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 付款页面 --%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>HMS结账界面</title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
</head>


<body>
<%-- 0.0 导航栏 --%>
<%@ include file="../page/head-page1.jsp"%>

    <blockquote class="layui-elem-quote">
        <h4>结账单号：<b>BD1002132412341</b></h4><br>
        <h4>结账房间：<b>AC1232</b></h4><br>
        <h4>宾客姓名：<b>杨莉莉</b></h4><br>
        <hr/>
        <h4>消费金额：<b>2200.00</b></h4><br>
        <h4>应收金额：<b>2200.00</b></h4><br>
        <h4>已收押金：<b>600.00</b></h4><br>
        <h4>优惠金额：<b>0.00</b></h4><br>
        <hr/>
        <h4>实收金额：<b>2200元</b></h4>
        <h4>宾客支付：<b>100元</b></h4>
        <hr>
        <h4>结账备注：</h4>
        文本框
        按钮：结账、取消
    </blockquote><br>
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

</html>
