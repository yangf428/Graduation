<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 填写房间入住的登记表格 --%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>HMS房间入住登记</title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
</head>
<body>

<%--导航栏--%>
<%@ include file="../page/head-page1.jsp"%>


<%-- 个人信息标题 --%>
<%--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 10px; margin-bottom: 40px;">--%>
    <%--<legend>请填写客人入住的相关信息</legend>--%>
<%--</fieldset>--%>
<h2 style="margin-left:600px;margin-bottom:20px;">入住登记</h2>
<hr style="margin-bottom:20px;"/>
<%--入住登记需要提交的表单--%>
<form class="layui-form" style="margin-left:180px;" action="/addOrder" method="post"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->

    <%--输入框--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">主客房间</label>
        <div class="layui-input-inline" style="width: 150px;">
            <input type="text" name="roomId" autocomplete="off" class="layui-input">
        </div>
        <%--<div class="layui-form-mid layui-word-aux">%</div>--%>
    </div>

    <%--下拉选择框--%>
    <%--style="margin:15px 0px;"--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">房间类型</label>
        <div class="layui-input-block" style="width: 150px;">
            <select name="orderType" lay-filter="aihao" placeholder="请选择房间类型" style="margin:15px 0px;">
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
        <label class="layui-form-label">预设单价</label>
        <div class="layui-input-inline" style="width: 150px;">
            <input name="" type="text" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">元</div>
    </div>
    <br>

    <%--下拉选择框--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">证件类型</label>
        <div class="layui-input-block" style="width: 150px;">
            <select name="userIdType" lay-filter="aihao">
                <option value="身份证">身份证</option>
                <option value="居民临时身份证">居民临时身份证</option>
                <option value="军官证">军官证</option>
                <option value="外国人居留证">外国人居留证</option>
            </select>
        </div>
    </div>

    <%--输入框--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">证件编码</label>
        <div class="layui-input-block" style="width: 190px;">
            <input type="text" name="userIdCerti" placeholder="请输入证件编码" autocomplete="off" class="layui-input">
        </div>
    </div>
    <br/><br>

    <%--单选框--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">主客性别</label>
        <div name="userGender" class="layui-input-block" style="width: 160px;">
            <input type="radio" name="sex" value="男" title="男">
            <input type="radio" name="sex" value="女" title="女" checked>
        </div>
    </div>

    <%--下拉选择框--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">宾客类型</label>
        <div class="layui-input-block" style="width: 100px;">
            <select name="interest" lay-filter="aihao">
                <option value="0">普通宾客</option>
                <option value="1">VIP宾客</option>
            </select>
        </div>
    </div>

    <%--输入框--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">主客姓名</label>
        <div name="userName" class="layui-input-block" style="width: 100px;">
            <input type="text" name="userName" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>

    <%--输入框--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">宾客人数</label>
        <div class="layui-input-block" style="width: 60px;">
            <input type="text" name="peopleNum" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>

    <%--输入框--%>
    <div class="layui-form-item">
        <label class="layui-form-label">地址信息</label>
        <div class="layui-input-block">
            <input type="text" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>

    <%--输入框--%>
    <div class="layui-form-item">
        <label class="layui-form-label">备注信息</label>
        <div class="layui-input-block">
            <input type="text" name="remark" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>

    <%--&lt;%&ndash;输入框&ndash;%&gt;--%>
    <%--<div class="layui-form-item layui-inline">--%>
        <%--<label class="layui-form-label">折扣比例</label>--%>
        <%--<div class="layui-input-inline" style="width: 70px;">--%>
            <%--<input type="text" autocomplete="off" class="layui-input">--%>
        <%--</div>--%>
        <%--<div class="layui-form-mid layui-word-aux">%</div>--%>
    <%--</div>--%>

    <%--输入框layui-input-block--%>
    <%--<div class="layui-form-item layui-inline">--%>
        <%--<label class="layui-form-label">实际单价</label>--%>
        <%--<div class="layui-input-inline" style="width: 70px;">--%>
            <%--<input type="text" autocomplete="off" class="layui-input">--%>
        <%--</div>--%>
        <%--<div class="layui-form-mid layui-word-aux">元</div>--%>
    <%--</div>--%>

    <%--输入框--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">预住天数</label>
        <div class="layui-input-inline" style="width: 70px;">
            <input type="text" name="" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">天</div>
    </div>

    <%--输入框--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">实收押金</label>
        <div class="layui-input-inline" style="width: 70px;">
            <input type="text" name="" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">元</div>
    </div>
    <br/><br>

    <%--复选框--%>
    <div class="layui-form-item layui-inline">
        <%--<label class="layui-form-label">复选框</label>--%>
        <div class="layui-input-block">
            <input type="checkbox" name="like[write]" title="钟点房">
            <input type="checkbox" name="like[read]" title="到预住天数时自动提醒">
        </div>
    </div>
    <br><br>

    <%--应该改成两个开关框--%>
    <%--提交和重置按钮--%>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="*">确认登记</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<%@include file="../page/foot-page.jsp"%>
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

<%--穿梭框需要的组件--%>
<script>
    layui.use('transfer', function () {
        var transfer = layui.transfer;

        //渲染
        transfer.render({
            elem: '#test1'  //绑定元素
            , data: [
                {"value": "1", "title": "房间AS001", "disabled": "", "checked": ""}
                , {"value": "2", "title": "房间AB234", "disabled": "", "checked": ""}
                , {"value": "3", "title": "房间AC119", "disabled": "", "checked": ""}
            ]
            , width: '200'
            , height: '200'
            , title: ['可供房间', '开单房间']
            , id: 'demo1' //定义索引
        });
    });
</script>

</html>
