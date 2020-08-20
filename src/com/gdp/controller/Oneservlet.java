package com.gdp.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Oneservlet extends HttpServlet {

    public Oneservlet(){
        System.out.println("OneServlet被创建啦");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Oneservlet类针对浏览器发送GET请求的处理");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Oneservlet类针对浏览器发送POST请求的处理");
    }
}
