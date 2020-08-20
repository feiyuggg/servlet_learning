package com.gdp.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

public class FiveServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //1.通过请求对象获得【请求头】中【所有请求参数】
        Enumeration paramNames = request.getParameterNames();//将所有请求参数名称保存到一个枚举对象进行放回
        while(paramNames.hasMoreElements()){
            String paraName = (String)paramNames.nextElement();
            String value = request.getParameter(paraName);
            System.out.println("请求参数名：" + paraName + " 参数值：" + value);
        }
    }
}
