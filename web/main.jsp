<%@ page import="com.testEnvironment.pojo.Employee" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 昊
  Date: 2020/7/18
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>主页面</title>
    <style type="text/css">
        @import url("s.css");
    </style>
</head>
<jsp:include page="function.jsp"/>

<body>

<h1>欢迎你，${name}</h1>



<c:if test="${empty employees}">
    没有数据！
</c:if>

<c:if test="${!empty employees}">
    <table class="content" align="center" border="1" cellspacing="0" >
        <caption align=“/” border="1">员工信息</caption>
        <tr>
            <th>员工编号</th>
            <th>员工姓名</th>
            <th>员工生日</th>
            <th>员工工资</th>
            <th colspan="2">操作</th>
        </tr>
        <c:forEach items="${employees}" var="e">
        <tr>
            <td>${e.e_no}</td>
            <td>${e.name}</td>
            <td>${e.birthday}</td>
            <td>${e.salary}</td>
            <td><button onclick="del(${e.id})">删除</button></td>
            <td><button onclick="upd(${e.id})">更新</button></td>
        </tr>
        </c:forEach>
    </table>
</c:if>

    <a href="add.jsp">添加用户</a>

</body>
<script>
    function del(id) {
        window.location.href="${pageContext.request.contextPath}/employee?method=del&id="+id;
    }
    function upd(id) {
        window.location.href="${pageContext.request.contextPath}/employee?method=toUpdate&id="+id;
    }
</script>
</html>