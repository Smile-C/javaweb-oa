<%@ page import="com.smile.bean.Dept" %>
<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
    <style>
        #box {
            margin: 0 auto;
        }
    </style>
</head>
<body>
<div id="box">
    <h1>修改信息</h1>
    <hr/>
    <form action="${pageContext.request.contextPath}/dept/edit2" method="post">
        部门编号:<input type="text" name="depno" value="${requestScope.deptInfo.deptno}" readonly/><br/>
        部门名称:<input type="text" name="depname" value="${requestScope.deptInfo.dname}"/> <br/>
        部门位置:<input type="text" name="depaddress" value="${requestScope.deptInfo.loc}"/><br/>
        <input type="submit" value="提交"/>
    </form>
</div>
</body>
</html>
