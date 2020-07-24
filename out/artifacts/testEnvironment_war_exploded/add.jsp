<%--
  Created by IntelliJ IDEA.
  User: 昊
  Date: 2020/7/18
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加用户</title>
    <style type="text/css">
        @import url("s.css");
    </style>
</head>
<jsp:include page="function.jsp"/>
<body >
<div class="parent">
<div class="add" align="center">
<form action="${pageContext.request.contextPath}/employee" method="POST">
    <input type="hidden" name="method" value="add"/>
    用户编号:<input type="text" name="e_no" /><br/>
    用户名:&nbsp&nbsp&nbsp&nbsp<input type="text" name="username" /><br/>
    密码:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="password" /><br/>
    生日:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="date" name="birthday"  value="2020-11-11"/><br/>
    薪水:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="salary" /><br/>
    <br/>

    <input align="center" type="submit" value="添加"/>
</form>
</div></div>
</body>
</html>