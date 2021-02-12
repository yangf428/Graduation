<%-- 添加管理员 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <title>添加管理员</title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
    <script src="/model/layui/layui.js"></script>
</head>

<body>
<%-- 导航栏 --%>
<%@ include file="../page/head-page1.jsp"%>
<h2 style="margin-left:660px; margin-bottom:20px;margin-top:150px;">个人中心</h2>
<form class="layui-form" action="/adminadd" method="post" style="margin-left:500px;">

    <%--工号--%>
    <div class="layui-form-item">
        <label class="layui-form-label">工号</label>
        <div class="layui-input-inline">
            <input name="adminId" type="text" autocomplete="off" class="layui-input">
        </div>
        <%--<div class="layui-form-mid layui-word-aux">不可修改</div>--%>
    </div>

    <%--姓名--%>
    <div class="layui-form-item">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-inline">
            <input name="adminName" type="text" autocomplete="off" class="layui-input">
        </div>
        <%--<div class="layui-form-mid layui-word-aux">不可修改</div>--%>
    </div>

    <%--电话--%>
    <div class="layui-form-item">
        <label class="layui-form-label">电话</label>
        <i class="layui-icon">&#xe642;</i>
        <div class="layui-input-inline">
            <input name="adminTel" type="text" autocomplete="off" class="layui-input">
        </div>
    </div>

    <%--权限级别--%>
    <div class="layui-form-item">
        <label class="layui-form-label">权限级别</label>
        <div name="userGender" class="layui-input-block" style="width: 160px;">
            <input type="radio" name="adminLevel" value="经理" title="经理">
            <input type="radio" name="adminLevel" value="普通管理员" title="普通管理员" checked>
        </div>
    </div>

    <%-- 提交和重置按钮 --%>
    <div class="layui-form-item" style="margin-left:120px;">
        <div class="layui-input-inline">
            <button class="layui-btn" lay-submit lay-filter="*">添加员工</button>
            <%--<button id="btn" type="reset" class="layui-btn layui-btn-primary">取消</button>--%>
            <a href="/searchAllAdmin" class="layui-btn layui-btn-primary">返回</a>
        </div>
    </div>
</form>

</body>
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
