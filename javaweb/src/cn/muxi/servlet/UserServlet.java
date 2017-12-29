package cn.muxi.servlet;

import cn.muxi.user.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("username");
        String pass = request.getParameter("password");
        String[] habits = request.getParameterValues("habit");

        User user = new User();
        user.setUname(name);
        user.setUpass(pass);
        user.setHabits(java.util.Arrays.asList(habits)); //将数组转化为list集合

        request.setAttribute("userobj",user);
        request.getRequestDispatcher("regSuccess.jsp").forward(request,response);

   }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        this.doGet(request,response);

    }
}
