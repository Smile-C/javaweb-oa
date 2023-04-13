<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/user/login" method="post">
    用户名:<input name="username" value=""><br>
    密 码:<input type="password" name="password" value=""><br>
    <input type="checkbox" name="checkbox" value="t">十天内免登录
    <input type="submit" value="登录">
</form>
</body>
</html>
