<%@ page import="com.smile.bean.Dept" %>
<%@page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
</head>
<body>
<div id="box">
    <h1>详情页面</h1>
    <hr/>
    部门编号：${requestScope.deptInfo.deptno} <br/>
    部门名称:${requestScope.deptInfo.dname} <br/>
    部门位置: ${requestScope.deptInfo.loc} <br/>
    <button id="btn">返回</button>
</div>
<script>
    const btn = document.querySelector("#btn");
    btn.onclick = function () {
        window.history.back();
    };
</script>
</body>
</html>
