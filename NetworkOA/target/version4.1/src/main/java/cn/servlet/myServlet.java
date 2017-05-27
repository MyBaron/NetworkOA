package cn.servlet;

import cn.entity.userJavaBean;
import cn.service.MessageServiceImpl;
import cn.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2017/4/10.
 */
@WebServlet(name = "myServlet")
public class myServlet extends HttpServlet {

    private String method;
    private userJavaBean user;
    private UserServiceImpl userService;
    private HttpSession session;
    private MessageServiceImpl messageService;



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //set Encoding
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        //get method
        method= request.getParameter("method");

        if(method!=null) {
            if (method.equals("login")) login(request, response);
            else if (method.equals("loginOut")) loginOut(request, response);
            else if (method.equals("register")) register(request,response);
            else if(method.equals("judgeAccount")) judge(request,response);
            else if(method.equals("judgeName")) judge(request,response);
            else if(method.equals("verCode")) verCode(request,response);
            else if(method.equals("getMessages")) getMessages(request,response);
            else if(method.equals("putMessages")) putMessages(request,response);
        }



    }

    private void putMessages(HttpServletRequest request, HttpServletResponse response) {

         messageService=new MessageServiceImpl();
         boolean b = messageService.putMessage(request);
        //TODO  判断正确后跳转

    }


    private void getMessages(HttpServletRequest request, HttpServletResponse response) {
        MessageServiceImpl messageService = new MessageServiceImpl();
        session=request.getSession(true);
        String getTen = request.getParameter("getTen");
        if(getTen!=null){
            //TODO 是否可以把getSession 写在Ini初始里
            session.setAttribute("messages",Integer.parseInt(session.getAttribute("messages").toString())+10);
        }else{
            session.setAttribute("messages","1");
        }
        String json = messageService.getMessage(session);
        //TODO
//region 测试用

       System.out.println(request.getSession().getAttribute("messages"));
       System.out.println(json);

      //endregion
        try {
            PrintWriter writer = response.getWriter();
            writer.write(json);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    //生成验证码
    private void verCode(HttpServletRequest request, HttpServletResponse response) {

        response.setHeader("Pragma","No-cache");
        response.setHeader("Cache-Control","no-cache");
        response.setDateHeader("Expires",0);

        response.setContentType("image/jpeg");
        //存入会话session
         session = request.getSession(true);

        //删除以前的
        session.removeAttribute("verCode");


        try {
            userService=new UserServiceImpl();
            userService.creadVerCode(session,response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }


    }

    //判断是否重复
    private void judge(HttpServletRequest request, HttpServletResponse response) {


       boolean bool1=true,bool2=true;
       userService=new UserServiceImpl();
      String account=request.getParameter("account");
      String name=request.getParameter("name");
      if(account!=null) {
           bool1 = userService.judgeAccount(account);
      }else if(name!=null){
           bool2 = userService.judgeName(name);
      }
      String json="{\"result1\":"+"\""+bool1+"\",\"result2\":"+"\""+bool2+"\"}";
        try {
            PrintWriter writer = response.getWriter();
            writer.print(json);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }


    }

    //register method
    private void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置缓存
        response.setHeader("Cache-Control","public");
        response.setHeader("Pragma","Pragma");


        String account = request.getParameter("account");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String verCode=request.getParameter("verCode");

        //判断验证码是否正确
       userService=new UserServiceImpl();
        if(!userService.judgeVerCode(request,verCode)){
                request.getRequestDispatcher("/register.jsp").forward(request,response);
                return;

        }

        if(account==null&&password==null&&name==null){

                request.getRequestDispatcher("/register.jsp").forward(request,response);

        }else {
             userService = new UserServiceImpl();
            boolean register = userService.register(account, password, name);
            if (register) {
                //注册成功
                    request.getRequestDispatcher("/other/index.jsp").forward(request, response);
            } else {
                    request.getRequestDispatcher("/register.jsp").forward(request, response);

            }

        }
    }

    //login method

    public void login(HttpServletRequest Request,HttpServletResponse Response) throws IOException {

        //获得request的数据
        String account = Request.getParameter("account");
        String password = Request.getParameter("password");
        PrintWriter writer = Response.getWriter();
        user=null;
        userService=new UserServiceImpl();
        user = userService.login(account, password);
        //判断用户名是否存在
        if(!userService.judgeAccount(account)){
            //用户名不存在
            String json="{\"account\":"+"\""+"false"+"\",\"password\":"+"\""+"false"+"\"}";
            writer.write(json);
            writer.close();
            return ;
        }else if(user!=null) {
            //登录成功
            HttpSession session = Request.getSession();
            session.setAttribute("name", user.getUser_name());
            session.setAttribute("id", user.getId());
            String json="{\"account\":"+"\""+"true"+"\",\"password\":"+"\""+"true"+"\"}";
            writer.write(json);
            writer.close();

        }else{
            //密码错误
            String json="{\"account\":"+"\""+"true"+"\",\"password\":"+"\""+"false"+"\"}";
            writer.write(json);
            writer.close();

        }
    }

    private void loginOut(HttpServletRequest Request,HttpServletResponse Response){
        //退出登录
        //清空session
        HttpSession session=Request.getSession();
        session.invalidate();
        try {
            Response.sendRedirect("version4.1.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
