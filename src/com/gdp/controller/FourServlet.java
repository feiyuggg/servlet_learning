package com.gdp.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class FourServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.通过请求对象，读取【请求行】中【url】信息
        String url = request.getRequestURI();
        //2.通过请求对象，读取【请求行】中【method】信息
        String method = request.getMethod();
        System.out.println("url:" + url);
        System.out.println("method:" + method);

    }
}
