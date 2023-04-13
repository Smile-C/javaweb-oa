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
    <h1>新增用户</h1>
    <hr/>
    <h1>
        ${sessionScope.username}
    </h1>
    <form action="${pageContext.request.contextPath}/dept/insert" method="post">
        部门编号: <input type="text" name="depno" value=""/><br/>
        部门名称： <input type="text" name="depname" value=""/> <br/>
        部门位置： <input type="text" name="depaddress" value=""/><br/>
        <input type="submit" value="提交"/>
    </form>
</div>
</body>
</html>
