package com.gdp.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SixServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //使用请求对象（request），读取【请求体】参数信息
        //这边会出现乱码,浏览器的post请求到达HTTP服务器之后，第一时间进行解码,请求体二进制内容由当前请求对象（request）默认使用[IOS-8859-1]字符集，请求体参数为中文将无法解码

        //通知请求对象，使用utf-8字符集对请求对象进行一次重写解码
        request.setCharacterEncoding("utf-8");
        String value = request.getParameter("userName");

        System.out.println("从请求体获得的Post参数信息："+ value);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //使用请求对象，读取【请求体】参数信息
        //浏览器的get请求到达HTTP服务器之后，第一时间进行解码，请求头二进制内容由tomcat进行解码，tomcat9.0默认使用utf-8
        String parameter = request.getParameter("userName");
        System.out.println("从请求体获得的Get参数信息："+ parameter);
    }
}
