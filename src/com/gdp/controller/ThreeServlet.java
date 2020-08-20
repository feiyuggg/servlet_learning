package com.gdp.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ThreeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String result = "https://www.baidu.com";
//        response.sendRedirect(result);//[响应头 location = “https://www.baidu.com”]
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String result = "https://www.baidu.com?userName=feiyuggg";
        response.sendRedirect(result);//[响应头 location = “https://www.baidu.com”]

        /*
        *   浏览器在接受到响应包之后，如果发现响应头中
        *   存在location属性，那么将自动通过地址栏向
        *   location指定网站发送请求
        */
    }
}
