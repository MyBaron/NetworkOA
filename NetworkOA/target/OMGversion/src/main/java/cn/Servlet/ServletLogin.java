package cn.Servlet;

import cn.Entity.userJavaBean;
import cn.Service.UserService;
import cn.Utils.UtilSpringContext;
import cn.Utils.UtilToJson;
import cn.Utils.UtilbeanToMap;
import com.google.gson.Gson;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;


/**
 * Created by Administrator on 2017/5/4.
 *
 * 用户servlet
 * 1.登录
 * 2.注册
 * 3.获取用户数据
 *
 */
@WebServlet(name = "ServletLogin")
@Component
@Service("ServletLogin")
public class ServletLogin extends HttpServlet {

    private String method;
    private UserService userService;
    private String json;

    @Override
    public void init() throws ServletException {
        super.init();
        userService =(UserService) UtilSpringContext.getBean("userService");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
       //set Encoding
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");


        //get method
        method=request.getParameter("method");
        if (method!=null){
            if (method.equals("login")) login(request,response);
            else if(method.equals("register")) register(request,response);
            else if(method.equals("getUser")) getUser(request,response);
            else if(method.equals("loginout")) loginOut(request,response);
        }

    }


    //用户登出
    private void loginOut(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession(false);
        if (session!=null){
             session.removeAttribute("user");
        }
    }

    //返回用户数据
    private void getUser(HttpServletRequest request, HttpServletResponse response)  {
        HttpSession session = request.getSession(false);
        Map<String,Object> map=new HashMap<String,Object>();
        if (session ==null){
            map.put("login","false");
        }else {
            userJavaBean user = (userJavaBean)session.getAttribute("user");
            map.put("login","true");
            map=UtilbeanToMap.beanToMap(user,map);
            map.remove("user_account");
            map.remove("user_password");
            map.remove("user_id");

        }
        Gson gson = new Gson();
        json=gson.toJson(map);
        try {
            PrintWriter writer = response.getWriter();
            writer.write(json);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    //注册操作
    private void register(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("this is register");
        String user_account = request.getParameter("user_account");
        String user_password = request.getParameter("user_password");
        String user_phone = request.getParameter("user_phone");
        String user_name=request.getParameter("user_name");
        Map<String,Object> map=new HashMap<String,Object>();
        if(user_account!=null&&user_password!=null&&user_phone!=null){
            if (userService!=null){
                if(userService.judgeAccount(user_account)){
                    userJavaBean userJavaBean = new userJavaBean();
                    userJavaBean.setUser_account(user_account);
                    userJavaBean.setUser_password(user_password);
                    userJavaBean.setUser_name(user_name);
                    userJavaBean.setUser_phone(user_phone);
                    userService.register(userJavaBean);
                    map.put("register","true");
                }else {
                    map.put("register","账号已存在");
                }

            }else{
                System.out.println("this userService is null");
            }

        }else{
            map.put("register","内容不可以为空哟~");
        }
        PrintWriter writer = response.getWriter();
        json = UtilToJson.toJson(map);
        System.out.println("this is register json:"+json);
        writer.write(json);
        writer.close();



    }
   //登录操作
    private void login(HttpServletRequest request, HttpServletResponse response) {
        PrintWriter writer = null;
        try {
            writer = response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }

        String user_account = request.getParameter("user_account");
        String user_password = request.getParameter("user_password");
        Map<String,Object> map=new HashMap<String,Object>();
        if(this.userService !=null){
            //验证登录
         userJavaBean login = this.userService.login(user_account, user_password);

         if (login!=null){
             //建立session
            HttpSession session = request.getSession(true);
            session.setAttribute("user",login);
            map.put("login","true");
            map=UtilbeanToMap.beanToMap(login,map);
            map.remove("user_password");
            map.remove("user_account");
            map.remove("user_id");


         }else{
             //登录失败
             map.put("login","false");
         }
         }else {
            System.out.println("this userService is null");
        }
        json=UtilToJson.toJson(map);
        writer.write(json);
        writer.close();
    }




}
