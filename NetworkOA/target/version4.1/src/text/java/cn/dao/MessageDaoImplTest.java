package cn.dao;

import cn.entity.MessageJavaBean;
import org.junit.Test;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Administrator on 2017/4/17.
 */
public class MessageDaoImplTest {

    @Test
    public void test1(){
        //测试传入留言墙数据
        //建立javaBean
        String time="2017-4-18 16:48:00";
        DateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date;
        try {
            date=dateFormat.parse(time);
            MessageJavaBean messageJavaBean = new MessageJavaBean();
            MessageDaoImpl messageDao = new MessageDaoImpl();

            Timestamp timestamp=new Timestamp(date.getTime());
            messageJavaBean.setId(3);
            messageJavaBean.setUser_name("揽入");
            messageJavaBean.setUser_id(4);
            messageJavaBean.setMessage_test("测试成功");
            messageJavaBean.setMessage_time(timestamp);

            System.out.println( messageDao.putMessage(messageJavaBean));

        } catch (ParseException e) {
            System.out.println("日期转换错误");
            e.printStackTrace();
        }





    }
}