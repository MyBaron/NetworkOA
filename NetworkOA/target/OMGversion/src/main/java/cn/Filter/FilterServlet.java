package cn.Filter;

import com.google.gson.Gson;
import org.apache.log4j.Logger;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;


/**
 * Created by Administrator on 2017/5/7.
 */
public class FilterServlet  implements Filter{
    private Map<String,Object> map;
    private Gson gson;
    private Logger logger;

    public void init(FilterConfig filterConfig) throws ServletException {
         map= new HashMap<String,Object>();
         gson = new Gson();
         logger=Logger.getLogger(FilterServlet.class);
    }



    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        String method= request.getParameter("method");
        logger.info("filter");
        if(method!=null){

            if(method.equals("register")||method.equals("login")){
                logger.info("the method is get register or login");
                chain.doFilter(request,response);
            }else if(method.equals("getVenue")){
                logger.info("the method is get Venue");
                chain.doFilter(request,response);
            } else {
                logger.info("the method is get other method");
                HttpServletRequest httpServletRequest = (HttpServletRequest) request;
                HttpSession session = httpServletRequest.getSession(false);
                HttpServletResponse httpServletResponse = (HttpServletResponse) response;

                //begin
            /*
            Enumeration<String> headerNames = httpServletRequest.getHeaderNames();
            if(headerNames.hasMoreElements()){
                System.out.println("this is head"+ httpServletRequest.getHeader(headerNames.nextElement()));

            }


            Cookie[] cookies = httpServletRequest.getCookies();
            if(cookies !=null) {
                System.out.println("cookies" + cookies.length);
                System.out.println(cookies.toString());
            }
            String requestedSessionId = ((HttpServletRequest) request).getRequestedSessionId();
            System.out.println("the id is"+requestedSessionId);
*/
                //endbegin

                if (session == null || session.getAttribute("user") == null) {
                    map.put("login", "false");
                    PrintWriter writer = httpServletResponse.getWriter();
                    writer.write(gson.toJson(map));
                    writer.close();
                } else {
                    chain.doFilter(request, response);
                }
            }
        }
    }

    public void destroy() {

    }
}
