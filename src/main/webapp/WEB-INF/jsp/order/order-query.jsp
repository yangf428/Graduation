<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--全部订单信息查询--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>欢迎来到HMS</title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
</head>

<body>
<%--导航栏--%>
<%--<%@ include file="../page/head-page.jsp"%>--%>
<%@ include file="../page/head-page1.jsp"%>

<%--个人信息标题--%>
<%--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 10px; margin-bottom: 40px;">--%>
    <%--<legend>全部订单信息查询</legend>--%>
<%--</fieldset>--%>
<h2 style="margin-left:600px;margin-bottom:20px;font-size:22px;">订单查询</h2>

<%-- 1.0 搜索表单 --%>
<form class="layui-form" action="/selectorder" method="post" style="margin-left: 80px;margin-bottom: 10px;">
    <%-- 内层嵌套在一起 --%>
    <%--选择订单状态--%>
    <div class="layui-form-item">
        <label class="layui-form-label">订单状态</label>
        <div class="layui-input-block" style="width: 200px;">
            <select name="orderState" class="layui-input">
                <option value="">订单状态</option>
                <option value="已结算">已结算</option>
                <option value="消费中">消费中</option>
                <option value="预定成功">预定成功</option>
            </select>
        </div>
    </div>
    <%--&lt;%&ndash;根据宾客姓名、证件编号、房间号进行查询&ndash;%&gt;--%>
    <%--<div class="layui-form-item">--%>
        <%--<label class="layui-form-label">条件搜索</label>--%>
        <%--<div class="layui-input-block" style="width: 200px;">--%>
            <%--<input type="text" name="condition" placeholder="条件" autocomplete="off" class="layui-input">--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--日期范围--%>
    <div class="layui-inline layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">日期范围</label>
            <%--左日期--%>
            <div class="layui-input-inline" style="width: 110px;">
                <%--<input type="text" name="price_min" placeholder="￥" autocomplete="off" class="layui-input">--%>
                <input type="text" name="time1" autocomplete="off" id="test1" class="layui-input">
            </div>
            <%--横线--%>
            <div class="layui-form-mid"> -</div>
            <%--右日期--%>
            <div class="layui-input-inline" style="width: 110px;">
                <%--<input type="text" name="price_max" placeholder="￥" autocomplete="off" class="layui-input">--%>
                <input type="text" name="time2" autocomplete="off" id="test2" class="layui-input">
            </div>
            <%-- 搜索键--%>
            <button class="layui-btn" lay-submit style="width: 100px;">
                筛选订单
            </button>
        </div>
    </div>

</form>
<table class="layui-table" style="width:960px;margin-left:70px;">
    <thead>
    <tr>
        <th>订单号</th>
        <th>订单类型</th>
        <th>房间号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>订单状态</th>
        <th>证件类型</th>
        <th>证件编号</th>
        <th>支付金额</th>
        <th>支付账号</th>
        <th>入住时间</th>
        <th>退房时间</th>
        <th>人数</th>
        <th>证件编号</th>
        <th>备注</th>
        <th>押金金额</th>
    </tr>
    </thead>

    <c:forEach items="${list}" var="order">
        <tbody>
        <tr>
            <td>${order.orderId}</td>
            <td>${order.orderType}</td>
            <td>${order.roomId}</td>
            <td>${order.userName}</td>
            <td>${order.userGender}</td>
            <td>${order.orderState}</td>
            <td>${order.userIdType}</td>
            <td>${order.userIdCerti}</td>
            <td>${order.payment}</td>
            <td>${order.paymentId}</td>
            <td>${order.inDate}</td>
            <td>${order.endDate}</td>
            <td>${order.peopleNum}</td>
            <td>${order.userIdCerti}</td>
            <td>${order.remark}</td>
            <td>${order.rentMemory}</td>

        </tr>
        </tbody>
    </c:forEach>

</table>
<%--&lt;%&ndash; 2.0 添加了一个表单，记录房型情况 &ndash;%&gt;--%>
<%--<table class="layui-table" lay-filter="demo" >--%>
    <%--&lt;%&ndash;表头&ndash;%&gt;--%>
    <%--<thead>--%>
    <%--<tr>--%>
        <%--&lt;%&ndash; 十五列数据 &ndash;%&gt;--%>
        <%--<th lay-data="{field:'orderState', width:100, sort:true}">订单状态</th>--%>
        <%--<th lay-data="{field:'orderId', width:100}">订单号</th>--%>
        <%--<th lay-data="{field:'userName', width:100}">宾客姓名</th>--%>
        <%--<th lay-data="{field:'userGender', width:100, sort:true}">性别</th>--%>
        <%--<th lay-data="{field:'userIdType', width:100}">证件类型</th>--%>
        <%--<th lay-data="{field:'userIdCerti', width:100}">证件编号</th>--%>
        <%--<th lay-data="{field:'peopleNum', width:100}, sort:true">人数</th>--%>
        <%--<th lay-data="{field:'roomId', width:100, sort:true}">房间号</th>--%>
        <%--<th lay-data="{field:'orderType', width:100}">房间类型</th>--%>
        <%--<th lay-data="{field:'inDate', width:100}">入住时间</th>--%>
        <%--<th lay-data="{field:'endDate', width:100}">预住天数</th>--%>
        <%--<th lay-data="{field:'rentMemory', width:100}">押金</th>--%>
        <%--<th lay-data="{field:'paymentTime', width:100}">结账时间</th>--%>
        <%--<th lay-data="{field:'paymentId', width:100}">结账单号</th>--%>
        <%--<th lay-data="{field:'userTel', width:100}">用户手机号</th>--%>
        <%--<th lay-data="{field:'operation', width:100}">操作</th>--%>
    <%--</tr>--%>

    <%--</thead>--%>
        <%--&lt;%&ndash;表身&ndash;%&gt;--%>
    <%--<tbody>--%>
    <%--<tr>--%>
        <%--<td>已结算</td>--%>
        <%--<td>2019012000</td>--%>
        <%--<td>许闲心</td>--%>
        <%--<td>男</td>--%>
        <%--<td>身份证</td>--%>
        <%--<td>152221100934568932</td>--%>
        <%--<td>5</td>--%>
        <%--<td>AB1001</td>--%>
        <%--<td>豪华单人间</td>--%>
        <%--<td>2019年1月30日</td>--%>
        <%--<td>6</td>--%>
        <%--<td>300</td>--%>
        <%--<td>2019年2月5日</td>--%>
        <%--<td>12341342343</td>--%>
        <%--<td>13827983357</td>--%>
        <%--<td>--%>
            <%--<div class="layui-btn-group">--%>
                <%--&lt;%&ndash; 设置图标 &ndash;%&gt;--%>
                <%--&lt;%&ndash;实心编辑图标&ndash;%&gt;--%>
                <%--<button type="button" class="layui-btn layui-btn-sm">--%>
                    <%--<a href="orderdetails"><i class="layui-icon">&#xe642;</i>详情</a>--%>
                <%--</button>--%>
            <%--</div>--%>
        <%--</td>--%>
    <%--</tr>--%>
    <%--</tbody>--%>
<%--</table>--%>


<script>
    var table = layui.table;

    //转换静态表格
    table.init('demo', {
        height: 315 //设置高度
        ,limit: 10 //注意：请务必确保 limit 参数（默认：10）是与你服务端限定的数据条数一致
        ,page: true
        //支持所有基础参数
    });
</script>
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

<%--&lt;%&ndash;日期选择的script&ndash;%&gt;--%>
<script src="/model/layui/laydate/laydate.js"></script>
<script>
    // 第一个填写时间的插件
    layui.use('laydate', function () {
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#test1' //指定元素
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
            elem: '#test2' //指定元素
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
