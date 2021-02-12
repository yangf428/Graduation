<%-- 修改房间信息的页面 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <title>查看房间</title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
</head>

<body>
<%-- 导航栏 --%>
<%@ include file="../page/head-page1.jsp"%>

<%-- 1.0 修改房间所需要的表单 --%>
<%-- 个人信息标题 --%>
<%--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 10px; margin-bottom: 40px;">--%>
    <%--<legend>修改客房信息</legend>--%>
<%--</fieldset>--%>
<h2></h2>


<%-- 此处查询通过房间号获取的房间信息 --%>
<form class="layui-form" method="post" action="/roomupdate" style="margin-left:100px;"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
    <%--输入框--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">客房号</label>
        <div class="layui-input-inline" style="width: 150px;">
            <input type="text" name="roomId" autocomplete="off" class="layui-input" value="${room.roomId}">
        </div>
        <%--<div class="layui-form-mid layui-word-aux">%</div>--%>
    </div>

    <%--下拉选择框--%>
    <%--style="margin:15px 0px;"--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">房间类型</label>
        <div class="layui-input-block" style="width: 150px;">
            <select name="roomType" value="${room.roomType}" lay-filter="aihao" placeholder="${room.roomType}" style="margin:15px 0px;">
                <option value="${room.roomType}">${room.roomType}</option>
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
            <input type="text" name="roomArea" value="${room.roomArea}" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">平方米</div>
    </div>
    <br>

    <%--输入框--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">客房可容纳</label>
        <div class="layui-input-inline" style="width: 150px;">
            <input type="text" name="roomContain" value="${room.roomContain}" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux">人</div>
    </div>

    <%--输入框--%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">房间价格</label>
        <div class="layui-input-inline" style="width: 150px;">
            <input type="text" autocomplete="off" class="layui-input" name="roomPrice" value="${room.roomPrice}">
        </div>
        <div class="layui-form-mid layui-word-aux">元</div>
    </div>
    <br><br>

    <%-- 开关 --%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">是否有窗</label>
        <div class="layui-input-block" >
            <input type="checkbox" lay-skin="switch" name="roomWindow" value="${room.roomWindow}">
        </div>
    </div>

    <%-- 开关 --%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">是否有空调</label>
        <div class="layui-input-block" >
            <input type="checkbox" name="airCondition" value="${room.airCondition}" lay-skin="switch" >
        </div>
    </div>

    <%-- 开关 --%>
    <div class="layui-form-item layui-inline">
        <label class="layui-form-label">是否有WIFI</label>
        <div class="layui-input-block">
            <input type="checkbox" lay-skin="switch" name="roomWifi" data-value="${room.roomWifi}">
        </div>
    </div>

    <%-- 开关 --%>
    <div class="layui-form-item layui-inline" >
        <label class="layui-form-label">是否有独卫</label>
        <div class="layui-input-block">
            <input type="checkbox" name="bathRoom" value="${room.bathRoom}" lay-skin="switch">
        </div>
    </div>


    <%--输入框--%>
    <div class="layui-form-item">
        <label class="layui-form-label">预订说明</label>
        <div class="layui-input-block">
            <input type="text" name="bookingInstructions" value="${room.bookingInstructions}" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>

    <%--输入框--%>
    <div class="layui-form-item">
        <label class="layui-form-label">使用规则</label>
        <div class="layui-input-block">
            <input type="text" name="rulesOfUse" value="${room.rulesOfUse}" placeholder="请输入使用规则" autocomplete="off" class="layui-input">
        </div>
    </div>


    <%--输入框--%>
    <div class="layui-form-item">
        <label class="layui-form-label">房型说明</label>
        <div class="layui-input-block">
            <input type="text" name="descriptionsOfRoomType" value="${room.descriptionsOfRoomType}" placeholder="请输入房型说明" autocomplete="off" class="layui-input">
        </div>
        <%--<div class="layui-form-mid layui-word-aux">%</div>--%>
    </div>

    <%-- 文本框 --%>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">备注信息</label>
        <div class="layui-input-block">
            <textarea name="remarks" data-value="${room.remarks}" class="layui-textarea">${room.remarks}</textarea>
        </div>
    </div>

    <%--这里应该显示出图片地址的图片！！！！！！！！--%>
    <%-- 文件上传 --%>
    <div class="layui-form-item layui-form-text">
        <button type="button" class="layui-btn" id="test1" style="margin:0px 110px">
            <i class="layui-icon">&#xe67c;</i>添加实图
        </button>
    </div>

    <br><br>
    <%--应该改成两个开关框--%>
    <%--提交和重置按钮--%>
    <div class="layui-form-item" style="">
        <div class="layui-input-block">
            <%--<a href="/roomupdate" class="layui-btn" lay-submit lay-filter="*">--%>
                <%--修改--%>
            <%--</a>--%>
                <button class="layui-btn" lay-submit lay-filter="*" >
                    确认修改
                </button>

                <a href="/roomdelete?roomId=${room.roomId}" class="layui-btn">
                    删除
                </a>
            <%--<a href="/roomdelete" class="layui-btn" lay-submit lay-filter="*">--%>
            <%--删除房间--%>
            <%--</a>--%>
                <%--<button class="layui-btn" lay-submit lay-filter="*" formaction="/roomdelete" >--%>
                    <%--删除房间--%>
                <%--</button>--%>

            <%--<button class="layui-btn" lay-submit lay-filter="*" href="/roomupdate">确认修改</button>--%>
            <%--<button type="reset" class="layui-btn">返回</button>--%>

            <%--<button type="button" class="layui-btn" onclick="func3()">删除房间</button>--%>
            <%-- 上面为了调用js，把id删除了 --%>
            <%--<button class="layui-btn"><a href="/home/deleteroom">删除房间</a></button>--%>
        </div>
    </div>
    <!-- 更多表单结构排版请移步文档左侧【页面元素-表单】一项阅览 -->
</form>
<%@include file="../page/foot-page.jsp"%>
</body>



<%--导航依赖的模块--%>
<script src="/model/layui/layui.js"></script>
<script>
    //导航 依赖的element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
</script>

<%-- 上传图片需要的东东 --%>
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

<%-- layui官网下载的layer插件 --%>
<script src="/model/layui/layer/layer.js"></script>
<%-- layui自带的layer插件 --%>
<script src="/model/layui/lay/modules/layer.js"></script>

<%-- 房间删除的询问信息 --%>
<script type="text/javascript">

    function func3() {
        //询问框
        layer.confirm('房间删除后信息之前的信息仍不会丢失，确定要删除这个房间吗？', {
            btn: ['确认删除', '我再想想'] //按钮
            // ,skin: 'demo-class'
        }, function() {
            layer.msg('房间已删除', {
                time: 3000,
                icon: 1,
                btn: ['知道啦']
            });
        }, function() {
            layer.msg('房间删除失败', {
                // time: 3000, //2s后自动关闭
                skin: 'demo-class'
                ,icon: 2
                ,btn: ['知道啦']
            });
        });
    }

</script>
</html>
