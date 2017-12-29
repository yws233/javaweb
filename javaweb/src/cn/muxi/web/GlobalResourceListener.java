package cn.muxi.web;

import org.apache.log4j.Logger;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * 初始化数据资源
*@author yws
* */

public class GlobalResourceListener implements ServletContextListener {

    private final Logger logger = Logger.getLogger(GlobalResourceListener.class);

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        logger.info("application已经被初始化");
        //获取application
        ServletContext application = servletContextEvent.getServletContext();


    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        logger.info("application已经被销毁");
    }
}
