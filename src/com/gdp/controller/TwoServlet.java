package com.gdp.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class TwoServlet extends HttpServlet {

    public TwoServlet(){
        System.out.println("TwoServlet被创建啦");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("TwoServlet处理浏览器的POST请求");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("TwoServlet处理浏览器的GET请求");
        String result = "Java<br/>Mysql<br/>HTML<br/>";
        String result2 = "你好<br/>我是GDP<br/>";
        //设置响应头content-type
        response.setContentType("text/html;charset=utf-8");
        //索要输出流
        PrintWriter out = response.getWriter();
        //通过输出流把结果写入到响应体
        out.write(result);
        out.print(result2);
    }
}
