<%-- 查找房间（待删除） --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>HMS搜索房间</title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
</head>

<body>
<%-- 0.0 导航栏 --%>
<%@ include file="../page/head-page1.jsp"%>

<%-- 1.0 个人信息标题 --%>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 10px; margin-bottom: 40px;">
    <legend>请输入需要搜索的房间号</legend>
</fieldset>
<%-- 通过输入的房间号搜索房间 --%>
<%-- 入住登记需要提交的表单 --%>
<form class="layui-form" action="/searchroom"  method="post"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
    <%-- 输入房间编码 --%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">房间编码</label>
        <div class="layui-input-inline" style="width: 150px;">
            <input type="text" name="roomId" autocomplete="off" class="layui-input">
        </div>
        <%--<div class="layui-form-mid layui-word-aux">%</div>--%>
    </div>
    <%-- 提交和重置按钮 --%>
    <div class="layui-form-item layui-inline">
        <div class="layui-input-inline">
            <button class="layui-btn" lay-submit lay-filter="*">
                搜索
            </button>
            <%--<button type="reset" class="layui-btn layui-btn-primary">重置</button>--%>
        </div>
    </div>
    <!-- 更多表单结构排版请移步文档左侧【页面元素-表单】一项阅览 -->
</form>
</body>


<%-- 上传图片需要的东东 --%>
<%-- 导航栏需要的模块 --%>
<script src="/model/layui/layui.js"></script>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>

<script>
    layui.use('upload', function () {
        var upload = layui.upload;

        //执行实例
        var uploadInst = upload.render({
            elem: '#test1' //绑定元素
            , url: '/upload/' //上传接口
            , done: function (res) {
                //上传完毕回调
            }
            , error: function () {
                //请求异常回调
            }
        });
    });
</script>

<%-- 表单提交需要的东东 --%>
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
</html>