package cn.dao;

import cn.entity.MessageJavaBean;
import cn.util.jdbcUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by Administrator on 2017/4/16.
 */
public class MessageDaoImpl implements MessageDao {
    private Connection connection;
    private String sql;
    private String sql1;
    private MessageJavaBean messageJavaBean;
    private QueryRunner queryRunner;

    public MessageJavaBean getMessage(int id) {
        //获取数据
       connection= jdbcUtil.getConnection();
       sql="select * from messages where id =?";
       sql1="SELECT user_name FROM users WHERE id=?";
       //创建dbUtil工具
        queryRunner=new QueryRunner();

        try {
            messageJavaBean =(MessageJavaBean) queryRunner.query(connection, sql, new BeanHandler(MessageJavaBean.class), id);
        } catch (SQLException e) {
            System.out.println("获取数据错误了");
            e.printStackTrace();
        }
        //获取user_name
        if(messageJavaBean!=null){
            int user_id = messageJavaBean.getUser_id();
            try {
                String st= queryRunner.query(connection,sql1,new ScalarHandler<String>("user_name"),user_id);
                messageJavaBean.setUser_name(st);
            } catch (SQLException e) {
                System.out.println("获取用户名出现错误");
                e.printStackTrace();
            }

        }
        jdbcUtil.closeAll(connection,null,null);
        return messageJavaBean;
    }

    public boolean putMessage(MessageJavaBean messageJavaBean) {
        int i=0;
        connection=jdbcUtil.getConnection();
        sql="insert into messages(user_id,message_test,message_time) values(?,?,?)";
        //获得dbUtils
        queryRunner=new QueryRunner();
        try {
            i= queryRunner.update(connection,sql,messageJavaBean.getUser_id(),messageJavaBean.getMessage_test(),messageJavaBean.getMessage_time());
        } catch (SQLException e) {
            System.out.println("存储留言墙出现错误");
            e.printStackTrace();
        }

        return i != 0;
    }

    public int getTotleMessage() throws SQLException {

        connection=jdbcUtil.getConnection();
        sql="SELECT COUNT(id) messagecount FROM messages";
        //dbUtil工具
        queryRunner = new QueryRunner();
        int integer = queryRunner.query(connection, sql, new ScalarHandler<Long>(1)).intValue();

        return integer;
    }
}
