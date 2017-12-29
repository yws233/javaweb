package cn.muxi.servlet;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloServlet extends HttpServlet {
    /*
    * servlet生命周期
    * */

   /* public HelloServlet(){
        System.out.println("实例化 >>>>>>>>>>>>>>HelloServlet");
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("service方法被调用,处理servlet请求！" + this);
    }

    @Override
    public void destroy() {
        System.out.println("销毁servlet实例！");
    }

    @Override
    public void init() throws ServletException {
        System.out.println("初始化servlet>>>>>>>");
    }
*/
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String value = getInitParameter("name");
        System.out.println(value+">>>>>>>>>>>>");
        String contextvalue = this.getServletContext().getInitParameter("context");
        System.out.println(contextvalue);
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //PrintWriter writer = resp.getWriter();
        /*writer.println("hello servlet!");
        writer.close();*/
        //req.getRequestDispatcher("index.jsp").forward(req,resp);
        resp.sendRedirect("index.jsp");
    }
}
