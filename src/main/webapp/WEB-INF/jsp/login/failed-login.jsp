<%-- 登录失败页 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>登录失败</title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
</head>
<body>
<%--个人信息标题--%>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px; margin-bottom: 20px;">
    <legend>登录失败，请重新核对用户名和密码!</legend>
</fieldset>
<%--<% response.setHeader("refresh","3;url=login.jsp");%>--%>
<br><a href="/toindex" class="layui-btn" style="margin-left:30px;width:300px;">返回到登录页</a>
<%--有时间或把注册加上--%>

</body>
</html>
