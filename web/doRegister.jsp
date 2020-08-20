<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020/8/20
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册中</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String pwd = request.getParameter("pwd");

    String DBDriver = "com.mysql.jdbc.Driver";
    String DBUrl = "jdbc:mysql://localhost:3306/proj_gdp?serverTimezone=UTC";
    String DBUser = "root";
    String DBPass = "gdp1314520";
    boolean getPermit = false;
%>
<%
    Connection con = null;
    PreparedStatement pstmt = null;
    try{
        getPermit = true;
        Class.forName(DBDriver);
        con = DriverManager.getConnection(DBUrl, DBUser, DBPass);
        String sql = "insert into users(name,pwd,email) values('" + name + "','" + pwd + "','" + email + "')";

        pstmt = con.prepareStatement(sql);
        pstmt.execute();

    } catch(SQLException e){
        System.out.println("数据库连接失败");
        e.printStackTrace();
    }finally{
        pstmt.close();
        con.close();
    }
%>
<% if(getPermit){
    request.getRequestDispatcher("index.jsp").forward(request, response);
} else request.getRequestDispatcher("regfailure.jsp").forward(request, response);
%>
</body>
</html>
