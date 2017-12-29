package cn.muxi.filter;

import javax.servlet.*;
import java.io.IOException;

public class EncodeFilter implements Filter {

    private String charset = null;

    //加入无参构造方法
    public EncodeFilter(){
        System.out.println("filter >>>>>>>>>>>实例化");
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        charset = filterConfig.getInitParameter("charset");

        System.out.println("filter>>>>>>>>>>>>初始化");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        //设置编码格式为utf-8
        System.out.println("进入filter>>>>>>>>");
        servletRequest.setCharacterEncoding((charset ==null || charset.trim().equals(""))?"utf-8":charset);
        servletResponse.setCharacterEncoding((charset ==null || charset.trim().equals(""))?"utf-8":charset);
        filterChain.doFilter(servletRequest,servletResponse); //继续执行
        System.out.println("退出filter>>>>>>>>>");
    }

    @Override
    public void destroy() {
        System.out.println("filter>>>>>>>>>>>>销毁");

    }
}
