<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>成功</title>
</head>
<body>
<c:out value="${user.userName}"/>
<c:out value="${user.userTel}"/>

<%--<c:out value="${userPwd}"/>--%>
</body>
</html>
