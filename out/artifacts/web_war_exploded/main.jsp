<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020/8/20
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆中</title>
</head>
<body>
<%!
    String DBDriver = "com.mysql.jdbc.Driver";
    String DBUrl = "jdbc:mysql://localhost:3306/proj_gdp?serverTimezone=UTC";
    String DBUser = "root";
    String DBPass = "gdp1314520";
    boolean getPermit = false;

%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // 记得反射先
        Class.forName(DBDriver);
        con = DriverManager.getConnection(DBUrl, DBUser, DBPass);
        String sql = "";

        pstmt = con.prepareStatement("select * from users where email=?");
        pstmt.setString(1, username);
        rs = pstmt.executeQuery();

        // 说明找到记录
        if(rs.next()) {
            if (rs.getString("pwd").equals(password)) {
                getPermit = true;
            }
        }
        //out.println(rs.getString("name"));
    } catch (SQLException e) {
        System.out.println("连接数据库失败");
        e.printStackTrace();

    } finally {
        //rs.close();
        pstmt.close();
        con.close();
    }
%>
<%
    if(getPermit) {
        request.getRequestDispatcher("success.jsp").forward(request, response);
    } else {
        request.getRequestDispatcher("failure.jsp").forward(request, response);
    }
%>
</body>
</html>
