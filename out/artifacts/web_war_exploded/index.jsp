<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020/8/19
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>你好呀</title>
  </head>
  <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css">
  <script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
  <style>
    form{
      margin-top:20px;
    }
    input{
      margin: 0 10px 0 10px;
    }
  </style>

  <body>
  <form class="form-inline text-center" role="form" action="main.jsp" method="post">

    <div class="form-group">
      <label>邮箱:<input type="text" class="form-control" name="username"></label>
    </div>

    <div class="form-group">
      <label>密码:<input type="password" class="form-control" name="password"></label>
    </div>

    <div  class="form-group">
      <label><input type="submit"  class="form-control btn-primary"  value="登录"></label>
    </div>
  </form>
  <form class="form-inline text-center">
    <label>还没有账号？<a href="register.jsp">注册</a></label>
  </form>
  </body>
</html>
