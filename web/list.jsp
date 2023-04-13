<%@ page import="java.util.ArrayList" %>
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
            width: 100%;
            height: 500px;
            margin: 0 auto;
        }

        h1 {
            text-align: center;
        }

        table {
            border-collapse: collapse;
            width: 70%;
            margin: 0 auto;
        }

        th, td {
            text-align: center;
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #009688;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
<div id="box">
    <h1>欢迎访问本站</h1>
    <hr/>
    <h1>${sessionScope.username}</h1>
    <a href="${pageContext.request.contextPath}/user/logout">[退出系统]</a>
    <table>
        <thead>
        <tr>
            <th>序号</th>
            <th>部门编号</th>
            <th>部门名称</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>


        <%--        <%--%>
        <%--            int i = 0;--%>
        <%--            ArrayList<Dept> list = (ArrayList<Dept>) request.getAttribute("deptList");--%>
        <%--            for (Dept dept : list) {--%>
        <%--        %>--%>
        <%--        <tr>--%>
        <%--            <td><%=++i%>--%>
        <%--            </td>--%>
        <%--            <td><%=dept.getDeptno()%>--%>
        <%--            </td>--%>
        <%--            <td><%=dept.getDname()%>--%>
        <%--            </td>--%>
        <%--            <td>--%>
        <%--                <a href="#" onclick="del(<%=dept.getDeptno()%>)">删除</a>--%>
        <%--                <a href="<%=request.getContextPath()%>/dept/edit1?deptno=<%=dept.getDeptno()%>">修改</a>--%>
        <%--                <a href="<%=request.getContextPath()%>/dept/detail?deptno=<%=dept.getDeptno()%>">详情</a>--%>
        <%--            </td>--%>
        <%--        </tr>--%>
        <%--        <%--%>
        <%--            }--%>
        <%--        %>--%>


        <c:forEach var="item" items="${requestScope.deptList}" varStatus="i">
            <tr>
                <td>${i.count}</td>
                <td>${item.getDeptno()}</td>
                <td>${item.getDname()}</td>
                <td>
                    <a href="#" onclick="del(${item.getDeptno()})">删除</a>
                    <a href="<%=request.getContextPath()%>/dept/edit1?deptno=${item.getDeptno()}">修改</a>
                    <a href="<%=request.getContextPath()%>/dept/detail?deptno=${item.getDeptno()}">详情</a>
                </td>
            </tr>
        </c:forEach>


        </tbody>
    </table>
    <hr/>
    <a href="${pageContext.request.contextPath}/add.jsp">新增部门</a>
</div>
<script>
    function del(dno) {
        let ok = window.confirm("亲，删了不可恢复哦！");
        if (ok) {
            document.location.href = "${pageContext.request.contextPath}/dept/delete?deptno=" + dno;
        } else {
        }
    }
</script>
</body>
</html>
