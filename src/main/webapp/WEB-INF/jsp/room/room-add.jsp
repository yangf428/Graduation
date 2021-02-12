<%@ taglib prefix="lay-verify" uri="http://www.springframework.org/tags/form" %>
<%-- 添加房间的页面 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title><title>添加房间</title></title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
</head>


<body>
<%-- 0.0 导航栏 --%>
<%@ include file="../page/head-page1.jsp"%>

<h2 style="margin-left:600px;margin-bottom:20px;">新增房间</h2>
<hr style="margin-bottom:20px;"/>
<%--&lt;%&ndash;个人信息标题&ndash;%&gt;--%>
<%--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 10px; margin-bottom: 40px;">--%>
    <%--<legend>请填写新增客房的相关信息</legend>--%>
<%--</fieldset>--%>

<%-- 添加房间所需要的表单 --%>
<form class="layui-form" action="/addroom" method="post" style="margin-left:100px;"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->

    <%--输入框--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">客房号</label>
        <div class="layui-input-inline" style="width: 150px;">
            <input type="text" name="roomId" lay-verify="required" autocomplete="off" class="layui-input">
        </div>
        <%--<div class="layui-form-mid layui-word-aux">%</div>--%>
    </div>

    <%--下拉选择框--%>
    <%--style="margin:15px 0px;"--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">房间类型</label>
        <div class="layui-input-block" style="width: 150px;">
            <select name="roomType" lay-verify="required" lay-filter="aihao" placeholder="请选择房间类型" style="margin:15px 0px;">
                <option value=""></option>
                <option value="标准单人间">标准单人间</option>
                <option value="标准双人间">标准双人间</option>
                <option value="豪华单人间">豪华单人间</option>
                <option value="豪华双人间">豪华双人间</option>
                <option value="商务套房">商务套房</option>
                <option value="多人普通间">多人普通间</option>
            </select>
        </div>
    </div>

    <%--输入框--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">客房面积</label>
        <div class="layui-input-inline" style="width: 150px;">
            <input type="text" name="roomArea" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">平方米</div>
    </div>
    <br>

    <%--输入框--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">客房可容纳</label>
        <div class="layui-input-inline" style="width: 150px;">
            <input type="text" name="roomContain" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">人</div>
    </div>

    <%--输入框--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">房间价格</label>
        <div class="layui-input-inline" style="width: 150px;">
            <input type="text" name="roomPrice" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">元</div>
    </div>
<br><br>

    <%-- 开关 --%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">是否有窗</label>
        <div class="layui-input-block">
            <input type="checkbox" name="roomWindow" lay-skin="switch" data-value="YES">
        </div>
    </div>

    <%-- 开关 --%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">是否有空调</label>
        <div class="layui-input-block">
            <input type="checkbox" name="airCondition" lay-skin="switch" >
        </div>
    </div>

    <%-- 开关 --%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">是否有WIFI</label>
        <div class="layui-input-block">
            <input type="checkbox" name="roomWifi" lay-skin="switch" >
        </div>
    </div>

    <%-- 开关 --%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">是否有独卫</label>
        <div class="layui-input-block">
            <input type="checkbox" name="bathRoom" lay-skin="switch" >
        </div>
    </div>


    <%--输入框--%>
    <div class="layui-form-item">
        <label class="layui-form-label">预订说明</label>
        <div class="layui-input-block">
            <input type="text" name="bookingInstructions" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>

    <%--&lt;%&ndash;输入框&ndash;%&gt;--%>
    <%--<div class="layui-form-item">--%>
        <%--<label class="layui-form-label">备注信息</label>--%>
        <%--<div class="layui-input-block">--%>
            <%--<input type="text" name="remarks" placeholder="请输入" autocomplete="off" class="layui-input">--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--输入框--%>
    <div class="layui-form-item">
        <label class="layui-form-label">使用规则</label>
        <div class="layui-input-block">
            <input type="text" name="rulesOfUse" placeholder="请输入使用规则" autocomplete="off" class="layui-input">
        </div>
    </div>


    <%--输入框--%>
    <div class="layui-form-item">
        <label class="layui-form-label">房型说明</label>
        <div class="layui-input-block">
            <input type="text" name="descriptionsOfRoomType" placeholder="请输入房型说明" autocomplete="off" class="layui-input">
        </div>
        <%--<div class="layui-form-mid layui-word-aux">%</div>--%>
    </div>

    <%-- 文本框 --%>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">备注信息</label>
        <div class="layui-input-block">
            <textarea name="remarks" placeholder="请输入内容" class="layui-textarea"></textarea>
        </div>
    </div>

    <%-- 文件上传 --%>
    <div class="layui-form-item layui-form-text">
        <button type="button" name="roomPhotos" class="layui-btn" id="test1" style="margin:0px 110px">
            <i class="layui-icon">&#xe67c;</i>添加实图
        </button>
    </div>

    <br><br>
    <%--应该改成两个开关框--%>
    <%--提交和重置按钮--%>
    <div class="layui-form-item" style="">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="*">确认添加</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
    <!-- 更多表单结构排版请移步文档左侧【页面元素-表单】一项阅览 -->

</form>
<%@include file="../page/foot-page.jsp"%>
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

<%-- 上传图片需要的东东 --%>
<script src="/static/build/layui.js"></script>
<script>
    layui.use('upload', function(){
        var upload = layui.upload;

        //执行实例
        var uploadInst = upload.render({
            elem: '#test1' //绑定元素
            ,url: '/upload/' //上传接口
            ,done: function(res){
                //上传完毕回调
            }
            ,error: function(){
                //请求异常回调
            }
        });
    });
</script>

<%-- 表单提交需要的东东 --%>
<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
</script>
</html>
