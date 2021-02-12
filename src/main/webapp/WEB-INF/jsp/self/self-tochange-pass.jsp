<%-- 管理员注册界面 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>改密</title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
    <script src="/model/layui/layui.js"></script>
</head>


<body style="background-color: #F0FBEB;">
<%--导航栏--%>
<%@ include file="../page/head-page1.jsp" %>

<h2 style="margin-left:660px; margin-bottom:20px;margin-top:150px;">修改密码</h2>

<form class="layui-form" action="/selfchangepass" method="post" style="margin-left:500px;">
    <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->

    <div class="layui-form-item ">
        <label class="layui-form-label">旧密码</label>
        <div class="layui-input-inline">
            <input name="adminPwd" type="password" autocomplete="off" class="layui-input" lay-verify="pass">
        </div>
    </div>

    <div class="layui-form-item ">
        <label class="layui-form-label">新密码</label>
        <div class="layui-input-inline">
            <input name="adminPwd1" type="password" autocomplete="off" class="layui-input" lay-verify="pass">
        </div>
    </div>

    <div class="layui-form-item ">
        <label class="layui-form-label">再次输入新密码</label>
        <div class="layui-input-inline">
            <input name="adminPwd2" type="password" autocomplete="off" class="layui-input" lay-verify="pass">
        </div>
    </div>

    <%-- 提交和重置按钮 --%>
    <div class="layui-form-item" style="margin-left:120px;">
        <div class="layui-input-inline">
            <button class="layui-btn" lay-submit lay-filter="*">确认重置</button>
            <%--<button id="btn" type="reset" class="layui-btn layui-btn-primary">取消</button>--%>
            <a href="/tohome" class="layui-btn layui-btn-primary">返回</a>
        </div>
    </div>
</form>
</body>


<script>
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

<script type="text/javascript">
    form.verify({
        username: function (value, item) { //value：表单的值、item：表单的DOM对象
            if (!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)) {
                return '用户名不能有特殊字符';
            }
            if (/(^\_)|(\__)|(\_+$)/.test(value)) {
                return '用户名首尾不能出现下划线\'_\'';
            }
            if (/^\d+\d+\d$/.test(value)) {
                return '用户名不能全为数字';
            }
        }

        //我们既支持上述函数式的方式，也支持下述数组的形式
        //数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
        , pass: [
            /^[\S]{6,12}$/
            , '密码必须6到12位，且不能出现空格'
        ]
    });
</script>

</html>
