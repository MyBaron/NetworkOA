package cn.Filter;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by baron on 17-6-3.
 */
public class loginFilter extends HandlerInterceptorAdapter {

    private final Logger logger=Logger.getLogger(loginFilter.class);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

      if(request.getSession().getAttribute("administrator")==null){
          logger.info("有人尝试绕过登录");
          request.getRequestDispatcher("/login.jsp").forward(request,response);
          return false;
      }else {

          return true;
      }


    }
}
