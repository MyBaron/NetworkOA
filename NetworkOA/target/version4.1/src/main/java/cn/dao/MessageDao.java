package cn.dao;

import cn.entity.MessageJavaBean;

import java.sql.SQLException;

/**
 * Created by Administrator on 2017/4/16.
 */
public interface MessageDao {


    //读取留言墙数据
      MessageJavaBean getMessage(int id) throws SQLException;

    //存储留言墙数据
    boolean putMessage(MessageJavaBean messageJavaBean);

    //获取留言墙总条数
     int getTotleMessage() throws SQLException;
}
