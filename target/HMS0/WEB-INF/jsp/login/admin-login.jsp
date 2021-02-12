<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 管理员登录界面 --%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>HMS管理员登录界面</title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
</head>


<body>

    <%-- 1.0 输入你的账号 --%>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 10px; margin-bottom: 40px;">
        <legend>HMS管理员登录</legend>
    </fieldset>
    <%-- 通过输入的房间号搜索房间 --%>
    <%-- 入住登记需要提交的表单 --%>
    <form class="layui-form"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
        <%-- 输入用户名/工号 --%>
        <div class="layui-form-item layui-inline">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-inline" style="width: 200px;">
                <input type="text" name="" autocomplete="off" class="layui-input">
            </div>
            <%--<div class="layui-form-mid layui-word-aux">%</div>--%>
        </div>
        <br><br>

        <%-- 输入密码 --%>
        <div class="layui-form-item layui-inline">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline" style="width: 200px;">
                <input type="password" name="" autocomplete="off" class="layui-input">
            </div>
            <%--<div class="layui-form-mid layui-word-aux">%</div>--%>
        </div>
        <br><br>

        <%-- 管理员登录 --%>
        <div class="layui-form-item layui-inline">
            <div class="layui-input-inline">
                <button class="layui-btn" lay-submit lay-filter="*" style="margin-left:60px;">
                    <a href="">管理员登录</a>
                </button>
            </div>
        </div>

        <%-- 超级管理员登录 --%>
        <div class="layui-form-item layui-inline">
            <div class="layui-input-inline layui-btn-primary">
                <button class="layui-btn" lay-submit lay-filter="*">
                    <a href="">超级管理员登录</a>
                </button>
            </div>
        </div>

    </form>

</body>
<script src="/model/layui/layui.js"></script>
<%--导航所需要加载的模块--%>
<script>
    //导航 依赖的element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>

<%--表单提交需要加载的模块--%>
<script>
    layui.use('form', function () {
        var form = layui.form;

        //各种基于事件的操作，下面会有进一步介绍
    });
</script>

</html>
