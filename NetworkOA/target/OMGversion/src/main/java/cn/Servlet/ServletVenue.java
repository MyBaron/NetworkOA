package cn.Servlet;

import cn.Entity.*;
import cn.Service.*;
import cn.Utils.UtilSpringContext;
import cn.Utils.UtilbeanToMap;
import cn.Utils.UtilsGetChinese;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.apache.log4j.Logger;
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
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * Created by Administrator on 2017/5/8.
 */
@WebServlet(name = "ServletVenue")
@Component
@Service("ServletVenue")
public class ServletVenue extends HttpServlet {

    private VenueService venueService;
    private VipService vipService;
    private VippriceService vipPrice;
    private GymService gymService;
    private double money;
    private String json;
    private UserService userService;
    private Gson gson;
    private Logger logger;
    private String method;
    private PrintWriter writer;
    private userJavaBean user;
    private CommentService commentService;
    static private Map<String,Integer> moneyMap;

    static {
        moneyMap=new HashMap<String, Integer>();
    }

    public ServletVenue() {
    }

    @Override
    public void init() throws ServletException {
        super.init();
        gson=new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm").create();
        venueService =(VenueService) UtilSpringContext.getBean("venueService");
        vipService=(VipService) UtilSpringContext.getBean("VipService");
        vipPrice=(VippriceService) UtilSpringContext.getBean("VippriceService") ;
        userService=(UserService) UtilSpringContext.getBean("userService");
        gymService=(GymService) UtilSpringContext.getBean("GymService") ;
        commentService=(CommentService)UtilSpringContext.getBean("CommentService");
        logger= Logger.getLogger(ServletVenue.class);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //set Encoding
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        //获取方法
        method=request.getParameter("method");


        if(method!=null){
           if(method.equals("getVenue")) getVenue(request,response);
           else if(method.equals("orderPlace"))  orderPlace(request,response);
           else if(method.equals("play")) play(request,response);
           else if(method.equals("getOrder")) getOrder(request,response);
           else if(method.equals("recharge")) recharge(request,response);
           else if(method.equals("getMoreMessage")) getMoreMessage(request,response);
           else if(method.equals("getComment")) getComment(request,response);
           else if(method.equals("writeComment")) writeComment(request,response);
        }else {
            logger.error("the method is null");
        }
    }


    //增加评论
    private void writeComment(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String venue_name = request.getParameter("venue_name");
        String comment_text = request.getParameter("comment_text");
        gson=new Gson();
        Map<String,Object> map=new HashMap<String, Object>();
        if(venue_name!=null&&comment_text!=null){

            HttpSession session = request.getSession();
            user=(userJavaBean)session.getAttribute("user");
            boolean b = commentService.putDataByVenue_name(user.getUser_id(), user.getUser_name(), comment_text, UtilsGetChinese.getChinese(venue_name));
            if(b){
                map.put("writeComment","true");
            }else {
                map.put("writeComment","false");
            }
        }else {
            map.put("writeComment","false");
        }
        writer=response.getWriter();
         writer.write(gson.toJson(map));
         writer.close();
    }

    //获取更多的评论
    private void getComment(HttpServletRequest request, HttpServletResponse response) throws IOException {
        gson=new GsonBuilder().setDateFormat("yyyy年MM月dd日").create();
        String venue_name = request.getParameter("venue_name");
        PrintWriter writer = response.getWriter();
        if(venue_name!=null){
            //把venue_name换成中文
            String chinese = UtilsGetChinese.getChinese(venue_name);
            List<commentJavaBean> commentList = commentService.selectByVenue_name(chinese);
            json=gson.toJson(commentList);
            writer.write(json);
            logger.info("获取更多评论");
        }
        writer.close();


    }

    //获取单个表单的详细信息
    private void getMoreMessage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        String id = request.getParameter("gym_id");
        Map<String,Object> map=new HashMap<String,Object>();
        gson=new GsonBuilder().setDateFormat("MM月dd日 mm:dd").create();
        PrintWriter writer = response.getWriter();
        if(id!=null) {


            //获取场馆信息
            gymnasiumJavaBean gymnasiumJavaBean = gymService.selectByGym_id(Integer.parseInt(id));

            //获取用户信息
             user =(userJavaBean) session.getAttribute("user");

             map=UtilbeanToMap.beanToMap(gymnasiumJavaBean,map);
             map=UtilbeanToMap.beanToMap(user,map);
             map.put("getMoreMessage","true");
             map.remove("user_password");
             map.remove("user_phone");
             map.remove("gym_id");
             json = gson.toJson(map);

            logger.info(user.getUser_name()+"获取更多的消息");
        }else {
            map.put("getMoreMessage","false");

            json = gson.toJson(map);
        }
         writer.write(json);
         writer.close();
    }

    //充值
    private void recharge(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //得到充值信息
        String rechargeMoney=request.getParameter("rechargeMoney");
        //得到session
        HttpSession session = request.getSession(false);
        userJavaBean user = (userJavaBean) session.getAttribute("user");
        boolean recharge = userService.recharge(user, rechargeMoney);
        Map<String,Object> map=new HashMap<String,Object>();

        if(recharge){
            map.put("recharge","true");
            userJavaBean byAccount = userService.findByAccount(user.getUser_account());
            session.setAttribute("user",byAccount);
            json= gson.toJson(map);
        }else {
            map.put("recharge","false");
            json=gson.toJson(map);
        }
        PrintWriter writer = response.getWriter();
        writer.write(json);
        writer.close();
         logger.info(user.getUser_name()+"充值成功,金额为"+rechargeMoney+"00元");
    }

    //获取订单
    private void getOrder(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //获取用户名id，调取该用户的订单
         HttpSession session = request.getSession();
         user = (userJavaBean)session.getAttribute("user");
        List<gymnasiumJavaBean> list = gymService.selectGymByuser_id(user.getUser_id());
        Gson gsonBuilder=new GsonBuilder().setDateFormat("MM月dd日").create();
        json=gsonBuilder.toJson(list);
        PrintWriter writer = response.getWriter();
        writer.write(json);
        logger.info(user.getUser_name()+"取得订单");
        writer.close();
    }


    //支付
    private void play(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        if(session!=null){
            user =(userJavaBean) session.getAttribute("user");
            gymnasiumJavaBean gym = (gymnasiumJavaBean)session.getAttribute("order");
            Map<String,Object> map=new HashMap<String,Object>();
            double user_monery = user.getUser_money();
            double gym_money = gym.getGym_money();
            int user_experi = user.getUser_experi();             //获取经验值
            int user_vip = user.getUser_vip();                   //获取vip等级
            int user_integral = user.getUser_integral();         //获取积分
            if(gym!=null){
                if(user.getUser_money()>=gym.getGym_money()){    //可以支付
                    user_monery-=gym_money;
                    map.put("play","true");
                    user_experi+=10;                             //经验值+10
                    user_integral+=10;                           //积分+10;
                    if(user_vip<user_experi/100){
                        logger.info("vip要升级了");
                        user_vip=user_experi/100;
                        userService.upData(user.getUser_id(),user_vip,user_experi,user_integral,user_monery);
                        vipService.putDate(user.getUser_id(),user_vip);
                    }else {
                        logger.info("支付成功，更新积分");
                        userService.upData(user.getUser_id(),user_vip,user_experi,user_integral,user_monery);
                    }
                    //更新session数据
                    user.setUser_money(user_monery);
                    user.setUser_experi(user_experi);
                    user.setUser_vip(user_vip);
                    session.setAttribute("user",user);

                    //把订单存进数据库
                    gymService.insertGym(gym);

                    map.put("user_money",user_monery);
                    map.put("user_vip",user_vip);
                    map.put("user_experi",user_experi);
                    map.put("user_integral",user_integral);
                    map.put("paly","true");

                    logger.info(user.getUser_name()+" the play is true");

                }else{                                              //不能支付
                    map.put("play","false");
                    logger.info(user.getUser_name()+" the play is false");
                }
            }else {
                  map.put("play","false");
                  logger.info(user.getUser_name()+" the play is false");
            }
              json=gson.toJson(map);
            PrintWriter writer = response.getWriter();
            writer.write(json);
            writer.close();
        }
    }

   //生成订单
    private void orderPlace(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String venue_name = request.getParameter("venue_name");
        String gym_begin_time = request.getParameter("gym_begin_time");
        //String gym_begin_time ="2017-05-09 20:11:11";
        String gym_long_time = request.getParameter("gym_long_time");
        if (venue_name!=null&&gym_begin_time!=null&&gym_long_time!=null){
            HttpSession session = request.getSession(false);             //获得session
            userJavaBean user = (userJavaBean)session.getAttribute("user");
            vippriceJavaBean one = vipPrice.findOne(user.getUser_vip());//获得vip对象
            PrintWriter writer = response.getWriter();  //获得printWriter
            if (one==null){
                logger.info("hte one is null");
            }
              //建立订单
            gymnasiumJavaBean gym=new gymnasiumJavaBean();
            gym.setGym_name(UtilsGetChinese.getChinese(venue_name));
            gym.setGym_begin_time(Timestamp.valueOf(gym_begin_time));
            gym.setGym_long_time(Integer.parseInt(gym_long_time));
            gym.setUser_id(user.getUser_id());
            gym.setGym_time(new Timestamp(System.currentTimeMillis()));
            if(moneyMap!=null){
                Integer integer = moneyMap.get(venue_name);
                if(integer!=null){                                         //如果可以在moneyMap里得到球馆的价钱就进入
                    DecimalFormat df=new DecimalFormat("#0.00");
                     money = Double.valueOf(df.format(integer * one.getVip_discount()*0.1*Integer.parseInt(gym_long_time)));
                    logger.info("the money is"+money);
                    gym.setGym_money(money);
                }else {                                                    //不可以在moneyMap里得到球馆的价钱
                    venueJavaBean oneVenue = venueService.findOneVenue(venue_name);
                    DecimalFormat df=new DecimalFormat("#0.00");
                    money = Double.valueOf(df.format(integer * one.getVip_discount()*0.1*Integer.parseInt(gym_long_time)));
                    gym.setGym_money(money);
                }
            }else {                                                    //不可以在moneyMap里得到球馆的价钱
                venueJavaBean oneVenue = venueService.findOneVenue(venue_name);
                DecimalFormat df=new DecimalFormat("#0.00");
                money = Double.valueOf(df.format( oneVenue.getVenue_price() * one.getVip_discount()*0.1*Integer.parseInt(gym_long_time)));
                gym.setGym_money(money);
            }
            session.setAttribute("order",gym);             //把订单参数存进session
            Map<String, Object> map = UtilbeanToMap.beanToMap(gym);
            map.put("vip_discount",one.getVip_discount());
            map.put("user_name",user.getUser_name());
            map.remove("gym_id");
            map.remove("user_id");
            map.put("orderPlace","true");
            gson=new GsonBuilder().setDateFormat("yyyy/MM/dd HH:mm").create();
            json=gson.toJson(map);
            writer.write(json);
            writer.close();
            logger.info("传入时间为"+gym_begin_time);
            logger.info(user.getUser_name()+" order use "+money);

        }else {
            logger.error("the orderPlace of values is null");
        }




    }

    //获取场馆信息
    private void getVenue(HttpServletRequest request, HttpServletResponse response) {
        logger.info("getVenue");
        String venue_name= request.getParameter("venue_name");
        if(venue_name!=null&&venueService!=null){
            venueJavaBean venue = venueService.findOneVenue(venue_name);  //根据场馆名字查找场馆信息
            Map<String, Object> map;                                     //建立一个map 存储Javabean信息 用来转成json字符串
            try {
                writer = response.getWriter();
            } catch (IOException e) {
                e.printStackTrace();
                logger.error(e.getMessage());
            }
            if(venue!=null) {
                moneyMap.put(venue_name,venue.getVenue_price());          //把场馆的钱存在一个全局静态的Map里
                map=UtilbeanToMap.beanToMap(venue);                     //javabean 转成map
                map.remove("venue_img");
                map.remove("venue_id");
                json=gson.toJson(map);                                  //转成Json格式的字符串
                writer.write(json);                                     //发送
                writer.close();
            }else {
                logger.info("the venue is null");
                writer.write("{'getVenue':'false'}");
                writer.close();
            }
        }else {
            logger.info("the venue is null or venueService is null");
        }
    }




}
