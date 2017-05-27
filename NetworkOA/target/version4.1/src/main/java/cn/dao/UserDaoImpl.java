package cn.dao;

import cn.entity.userJavaBean;
import cn.util.jdbcUtil;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Administrator on 2017/4/10.
 */
public class UserDaoImpl implements UserDao {

    private Connection con;
    private PreparedStatement pre;
    private userJavaBean user;
    private ResultSet resultSet;
    private QueryRunner queryRunner;

   //诺账号密码正确，返回对象。否则返回null
    public userJavaBean judgeAccAndPas(String user_account,String password) {
        con=null;
        user=null;
        String sql="select * from users where user_account=? and user_password=?";

        //connecton mysql
        con= jdbcUtil.getConnection();
        Object[] params={user_account,password};
        //创建dbUtil工具类
        queryRunner=new QueryRunner();

        try {
             user= (userJavaBean)queryRunner.query(con, sql, new BeanHandler(userJavaBean.class), params);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        jdbcUtil.closeAll(con,pre,resultSet);
        return user;
//region 第一次写的代码
/*
        try {
            pre=con.prepareStatement(sql);
            pre.setString(1,user_account);
            pre.setString(2,password);
             resultSet = pre.executeQuery();

            //遍历得到的结果
            if(resultSet.next()){
                user=new userJavaBean();
                user.setId(resultSet.getInt("id"));
                user.setUser_name(resultSet.getString("user_name"));
                user.setUser_account(resultSet.getString("user_account"));
                user.setUser_password(resultSet.getString("user_password"));


            }

            jdbcUtil.closeAll(con,pre,resultSet);
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
        }


       return null;
        */
//endregion

    }


    //判断用户名是否重复
    public boolean judgeAccount(String user_account) {
        String sql="select * from users where user_account=?";

        return find(sql,user_account);
    }

    public boolean judgeName(String user_name) {


        String sql="select * from users where user_name=?";
        return find(sql,user_name);
    }

    public boolean putData(String user_account, String user_password, String user_name) {
        String sql="INSERT INTO users(user_name,user_account,user_password) VALUES (?,?,?)";
        String[] params={user_name,user_account,user_password};
        con=jdbcUtil.getConnection();
        queryRunner=new QueryRunner();

        try {
            int update = queryRunner.update(con, sql, params);
            jdbcUtil.closeAll(con,pre,resultSet);
            return update!=0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        //region 第一次写的代码
/*
        try {
            pre=con.prepareStatement(sql);
            pre.setString(1,user_name);
            pre.setString(2,user_account);
            pre.setString(3,user_password);
            int i = pre.executeUpdate();
            return i != 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
*/
// endregion
        jdbcUtil.closeAll(con,pre,resultSet);
        return false;
    }




    //查询
    private boolean find( String sql,String title){
        try {
            con=jdbcUtil.getConnection();
            pre=con.prepareStatement(sql);
            pre.setString(1,title);
            resultSet = pre.executeQuery();
            if (resultSet.next()){
                jdbcUtil.closeAll(con,pre,resultSet);

                return true;
            }else{
                jdbcUtil.closeAll(con,pre,resultSet);

                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        jdbcUtil.closeAll(con,pre,resultSet);
        return false;
    }
}
