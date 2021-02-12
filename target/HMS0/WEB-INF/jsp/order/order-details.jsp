<%-- 订单详情页,可以支付、可以续订、可以退房 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>HMS房间订单详情</title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
</head>

<body>
<%-- 0.0 导航栏 --%>
<%@ include file="../page/head-page1.jsp"%>

<%-- 订单详情页 --%>
<%--<h3>订单状态：未结算</h3>--%>
<%--个人信息标题--%>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px; margin:0 auto;">
    <legend>订单详情</legend>
</fieldset>

<%-- 个人基本信息 --%>
<blockquote class="layui-elem-quote" style="margin:30px 110px; font-size: 15px; line-height:32px;">
    <form class="layui-form" action="">
        <div class="layui-container">
            <%--身份证照片--%>
            <img src="/img/IMG_5571.GIF" style="width:100px; margin:0px 6px;"><br>
            订单号：2019012000<br>
            订单状态：
            姓名：许闲心<br>
            性别：男<br>
            身份证号：152221100934568932<br>
            人数：5人<br>
            <hr>
            房间号：AB1001<br>
            房间类型：豪华单人间<br>
            入住日期：2019年1月30日<br>
            预住天数：五天
            <div class="layui-btn-group layui-btn-xs">
                <button type="button" class="layui-btn layui-btn-xs">续订</button>
                <button type="button" class="layui-btn layui-btn-xs">退房</button>
                <button type="button" class="layui-btn layui-btn-xs">换房</button>
            </div>
            <hr>
            消费金额：2200.00
            <table class="layui-table" style="width:500px">
                <thead>
                <tr>
                    <th>商品</th>
                    <th>单价</th>
                    <th>数量</th>
                    <th>总价</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>AB1001</td>
                    <td>5</td>
                    <td>430</td>
                    <td>2150</td>
                </tr>
                <tr>
                    <td>矿泉水</td>
                    <td>2</td>
                    <td>25</td>
                    <td>50</td>
                </tr>
                </tbody>
            </table>
            <%--<button type="button" class="layui-btn layui-btn-xs">明细</button><br>--%>
            已收押金：600.00元<br>
            优惠金额：100.00元<br>
            应收金额：2200.00元
            <hr>
            <button type="button" class="layui-btn layui-btn-xs">添加备注</button>
        </div><br><br>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="formDemo">结算</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</blockquote>
<%--<blockquote class="layui-elem-quote">--%>
<%--<div class="layui-container">--%>
<%--&lt;%&ndash;常规布局（以中型屏幕桌面为例）：&ndash;%&gt;--%>
<%--<div class="layui-row">--%>
<%--<div class="layui-col-md3">--%>
<%--<h3>订单号：2019012000</h3>--%>
<%--</div>--%>
<%--<div class="layui-col-md3">--%>
<%--<h3>姓名：许闲心(男)</h3>--%>
<%--</div>--%>
<%--<div class="layui-col-md4">--%>
<%--<h3>身份证号：152221100934568932</h3>--%>
<%--</div>--%>
<%--<div class="layui-col-md2">--%>
<%--<h3>人数：5人</h3>--%>
<%--</div>--%>
<%--</div>--%>

<%--&lt;%&ndash;订单信息标题&ndash;%&gt;--%>
<%--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">--%>
<%--<legend>订单信息</legend>--%>
<%--</fieldset>--%>
<%--<div class="layui-container">--%>
<%--&lt;%&ndash;常规布局（以中型屏幕桌面为例）：&ndash;%&gt;--%>
<%--<div class="layui-row">--%>
<%--<div class="layui-col-md5">--%>
<%--<h3>房间号：AB1001（豪华单人间）</h3>--%>
<%--</div>--%>
<%--<div class="layui-col-md5">--%>
<%--<h3>入住日期：2019年1月30日</h3>--%>
<%--</div>--%>
<%--<div class="layui-col-md2">--%>
<%--<h3>预住天数：5天</h3>--%>
<%--</div>--%>
<%--</div>--%>

<%--&lt;%&ndash;账目信息标题&ndash;%&gt;--%>
<%--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">--%>
<%--<legend>账目信息</legend>--%>
<%--</fieldset>--%>
<%--<h4>结账单号：<b>BD1002132412341</b></h4><br>--%>
<%--<h4>消费金额：<b>2200.00</b></h4><br>--%>
<%--<h4>应收金额：<b>2200.00</b></h4><br>--%>
<%--<h4>已收押金：<b>600.00</b></h4><br>--%>
<%--<h4>优惠金额：<b>0.00</b></h4><br>--%>
<%--<hr/>--%>
<%--<h4>实收金额：<b>2200元</b></h4>--%>
<%--<h4>宾客支付：<b>100元</b></h4>--%>
<%--<hr>--%>
<%--<h4>结账备注：</h4>--%>
<%--文本框--%>
<%--按钮：结账、取消--%>
<%--</blockquote><br>--%>
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
