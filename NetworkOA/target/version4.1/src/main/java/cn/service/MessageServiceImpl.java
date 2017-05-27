package cn.service;

import cn.dao.MessageDaoImpl;
import cn.entity.MessageJavaBean;
import cn.util.arrayListToJson;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/**
 * Created by Administrator on 2017/4/17.
 */
public class MessageServiceImpl implements MessageService {
    private MessageDaoImpl messageDao;
    private MessageJavaBean messageJavaBean;
    private ArrayList<MessageJavaBean> arrayList;
    private int number;
    private int sum;
    private int totleMessage;
    private Date date;


    public String getMessage(HttpSession session) {


        totleMessage = 0;
        arrayList = new ArrayList<MessageJavaBean>();
        //获取数据库的总条数
        messageDao = new MessageDaoImpl();
        try {
            totleMessage = messageDao.getTotleMessage();
        } catch (SQLException e) {
            System.out.println("获取总条数错误");
            e.printStackTrace();
        }

        if(session!=null) {

            //获取number
            Object object = session.getAttribute("messages");
            number = 1;
            if (object != null) {
                number = Integer.parseInt(object.toString());
            }
            sum = number;



            //region 从第一条开始读取
        /*
        //判断是否大于10条
        int totle=totleMessage-number;
        if(totle<10&&totle>=0){
            for(int i=number;i<=totleMessage;i++) {
                 number++;
                 messageJavaBean = messageDao.getMessage(i);
                 arrayList.add(messageJavaBean);

            }
        }else if(totle>=10){
            for(int i=number;i<=(sum+9);i++){
                number++;
                messageJavaBean = messageDao.getMessage(i);
                arrayList.add(messageJavaBean);
            }
        }
*/   //endregion
            //从最后一条开始读取
            //判断是否大于十条
            int totle = totleMessage - number;
            if (totle < 10 && totle >= 0) {
                for (int i = totle + 1; i > 0; i--) {
                    number++;
                    messageJavaBean = messageDao.getMessage(i);
                    arrayList.add(messageJavaBean);
                }
            } else if (totle >= 10) {
                for (int i = totle; i > totle - 10; i--) {
                    number++;
                    messageJavaBean = messageDao.getMessage(i);
                    arrayList.add(messageJavaBean);
                }

            }


            String s = arrayListToJson.arrayListToJson(arrayList);


            return s;
        }else {
            messageJavaBean = messageDao.getMessage(totleMessage);
            arrayList.add(messageJavaBean);
            String s = arrayListToJson.arrayListToJson(arrayList);
            return s;
        }
    }

    public boolean putMessage(HttpServletRequest request) {
        //TODO 把数据放到MessageJavaBean

        DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        messageDao=new MessageDaoImpl();

        String user_id = request.getSession().getAttribute("id").toString();
        String message_test=request.getParameter("message_test");
        String message_time=request.getParameter("message_time");

        try {
            date=dateFormat.parse(message_time);

            messageJavaBean=new MessageJavaBean();
            messageJavaBean.setUser_id(Integer.parseInt(user_id));
            messageJavaBean.setMessage_test(message_test);
            messageJavaBean.setMessage_time(new Timestamp(date.getTime()));

        } catch (ParseException e) {
            System.out.println("时间格式转换出错，putMessage()");
            e.printStackTrace();
        }
        if(messageJavaBean!=null) {
            return messageDao.putMessage(messageJavaBean);
        }else{
            return false;
        }
    }
}
