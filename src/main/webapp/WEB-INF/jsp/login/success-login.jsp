<%-- 登录成功页 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>
<%@ page isELIgnored="false" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>登录成功</title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
    <style>
        .box {
            margin-left: 500px;
            margin-top: 260px;
            width: 800px;
            height: 100px;
            background-color: #F0FBEB;
        }

        .bodyhaha {
            background-color: #F0FBEB;
        }

        /*.background {*/
        /*background: url(xxx.png);*/
        /*background-size: 100% 100%;*/
        /*height: 100%;*/
        /*position: fixed;*/
        /*width: 100%*/
        /*}*/
    </style>
</head>

<body class="bodyhaha">
<div class="box">
    <h2>尊敬的${admin.adminName}，欢迎来到HMS系统!</h2>
    <br><a href="/roomstate" class="layui-btn" style="margin-left:30px;width:300px;">进入到主页面</a>
</div>
</body>
</html>
