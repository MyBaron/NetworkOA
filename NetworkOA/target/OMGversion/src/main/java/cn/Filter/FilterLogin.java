package cn.Filter;

import cn.Entity.managerJavaBean;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2017/5/7.
 */
public class FilterLogin implements HandlerInterceptor{
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        Logger logger=Logger.getLogger(FilterLogin.class);
        logger.info("get in the filter");
        HttpSession session = httpServletRequest.getSession(false);
        if (session!=null){
            managerJavaBean manager =(managerJavaBean) session.getAttribute("manager");
            if(manager==null){
                logger.info("the ContetePath"+httpServletRequest.getContextPath());
                httpServletResponse.sendRedirect(httpServletRequest.getContextPath());
                return false;
            }else {
                return true;
            }
        }

        httpServletRequest.getRequestDispatcher(httpServletRequest.getContextPath()).forward(httpServletRequest,httpServletResponse);
       return false;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
