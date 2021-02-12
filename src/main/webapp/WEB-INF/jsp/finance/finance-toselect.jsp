<%-- 财务管理 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>财务管理</title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
    <script src="/model/layui/layui.js"></script>
</head>

<body>
<%@ include file="../page/head-page1.jsp" %>
<%--个人信息标题--%>
<h2 style="margin-left:600px;margin-bottom:60px;font-size:22px;">请输入时间范围</h2>
<%--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 10px; margin-bottom: 40px;">--%>
    <%--<legend>请输入时间范围</legend>--%>
<%--</fieldset>--%>

<%-- 1.0 搜索表单 --%>
<form class="layui-form" action="/financeselect" method="post" style="margin-left:120px;">
    <%-- 内层嵌套在一起 --%>
    <%--日期范围--%>
    <div class="layui-inline layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">日期范围</label>
            <%--左日期--%>
            <div class="layui-input-inline" style="width: 160px;">
                <%--<input type="text" name="price_min" placeholder="￥" autocomplete="off" class="layui-input">--%>
                <input type="text" id="time1" name="time1" autocomplete="off" class="layui-input">
            </div>
            <%--横线--%>
            <div class="layui-form-mid"> - </div>
            <%--右日期--%>
            <div class="layui-input-inline" style="width: 160px;">
                <%--<input type="text" name="price_max" placeholder="￥" autocomplete="off" class="layui-input">--%>
                <input type="text" id="time2" name="time2" autocomplete="off" class="layui-input">
            </div>

            <%-- 搜索键--%>
            <button class="layui-btn" lay-submit >
                查询
            </button>
        </div>
    </div>
    </div>
</form>

<table class="layui-table" lay-skin="line" style="margin-left:160px;width:1000px;">
    <colgroup>
        <col width="150">
        <col width="200">
        <col>
    </colgroup>
    <thead>
    <tr>
        <th>订单编号</th>
        <th>房间类型</th>
        <th>入住时间</th>
        <th>入住天数</th>
        <th>订单状态</th>
        <th>结账单号</th>
        <th>金额</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach var="order" items="${list}">
    <tr>
        <td>${order.orderId}</td>
        <td>${order.orderType}</td>
        <td>${order.inDate}</td>
        <td>${order.endDate}</td>
        <td>${order.orderState}</td>
        <td>${order.paymentId}</td>
        <td>${order.payment}</td>
    </tr>
    </c:forEach>
    </tbody>

</table>

<%@include file="../page/foot-page.jsp"%>
</body>
<script src="/model/layui/laydate/laydate.js"></script>
<script>
    // 第一个填写时间的插件
    layui.use('laydate', function () {
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#time1' //指定元素
            // ,value: '2018-08-18'//默认日期
        });
    });
</script>

<script>
    // 第二个填写时间的插件
    layui.use('laydate', function () {
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#time2' //指定元素
            // ,value: '2018-08-18'//默认日期
        });
    });
</script>

<script>
    //表单提交插件
    //Demo
    layui.use('form', function () {
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function (data) {
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
</script>
</html>
