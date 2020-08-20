<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020/8/20
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<body>
<center>
    <h2>欢迎用户<%=request.getParameter("username") %>,登陆成功</h2>
    <h2><a href="index.jsp"a>退出登录</a></h2>
</center>
</body>
</html>
