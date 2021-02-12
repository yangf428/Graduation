<%-- 所有管理员的表格 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>管理管理员</title>
    <link rel="stylesheet" href="/model/layui/css/layui.css">
    <script src="/model/layui/layui.js"></script>
</head>

<body>
<%-- 导航栏 --%>
<%@ include file="../page/head-page1.jsp"%>
<table class="layui-table" style="width:800px;margin-left:300px;">

    <%-- 标题页面 --%>
    <h2 style="margin-left:600px;margin-bottom:20px;margin-top:20px;">员工管理</h2>

    <%-- 表头 --%>
    <colgroup>
        <col width="150">
        <col width="200">
        <col width="200">
        <col width="200">
        <col width="200">
    </colgroup>
    <thead>
    <tr>
        <th>员工编码</th>
        <th>员工姓名</th>
        <th>电话号码</th>
        <th>权限等级</th>
        <th>操作</th>
    </tr>
    </thead>

    <%-- 表身 --%>
    <%--这里列出所有管理员--%>
    <tbody>
    <c:forEach items="${list}" var="admin">
    <tr>
        <td>${admin.adminId}</td>
        <td>${admin.adminName}</td>
        <td>${admin.adminTel}</td>
        <td>${admin.adminLevel}</td>
        <td><a href=""><i class="layui-icon">&#xe640;</i></a></td>
    </tr>
    </c:forEach>
    </tbody>
</table>
<%-- 添加员工按键 --%>
<a href="/admintoadd" class="layui-btn" style="margin-left:500px;width: 300px;margin-top:15px;">添加员工</a>

</body>
</html>
