<%@ page import="com.testEnvironment.pojo.Employee" %><%--
  Created by IntelliJ IDEA.
  User: 昊
  Date: 2020/7/18
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
    <title>添加用户</title>
    <style type="text/css">
        @import url("s.css");
    </style>
</head>
<jsp:include page="function.jsp"/>
<body>
<div class="parent" >
    <div class="update" align="center">
<c:if test="${!empty employee}">

<form  action="${pageContext.request.contextPath}/employee" method="POST">
    <input type="hidden" name="method" value="update"/>
    用户编号：<input type="text" name="e_no" value="${employee.e_no}"/><br/>
    用户名：&nbsp&nbsp&nbsp&nbsp<input type="text" name="username" value="${employee.name}"/><br/>
    密码：&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="password" value="${employee.password}"/><br/>
    生日：&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="date" name="birthday"  value="${employee.birthday}"/><br/>
    薪水：&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="salary" value="${employee.salary}"/><br/>
    <input type="submit" value="更新"/>
</form>
</c:if>
        </div>
    </div>
</body>
</html>