<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020/8/20
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>

</head>
<body>
<form class="form-inline text-center" role="form" action="doRegister.jsp" method="post">

    <div class="form-group">
        <p><label>姓    名:      <input type="text" class="form-control" name="name"></label></p>
        <p><label>邮    箱:      <input type="text" class="form-control" name="email"></label></p>
        <p><label>密    码:      <input type="text" class="form-control" name="pwd"></label></p>
        <p><label>重复密码:<input type="text" class="form-control" name="pwd2"></label></p>

        <label><input type="submit"  class="form-control btn-primary"  value="注册"></label>
    </div>
</form>
</body>
</html>
