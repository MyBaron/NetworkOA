package cn.Dao;


import cn.Entity.userJavaBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2017/4/10.
 */


public interface UserDao {

    //判断账号密码是否正确
    userJavaBean judgeAccAndPas(String user_account, String user_password);

    //查实用户名是否已存在
    int judgeAccount(String user_account);

    //查实昵称是否已存在
    int judgeName(String user_name);

    //把数据存进数据库（注册成功）
    boolean putData(userJavaBean user);

    //查找单个用户根据账号
    userJavaBean findByAccount(String user_account);

    //查找所有vip会员
    List<userJavaBean> findAllVip();

    //根据user_id查询用户
    userJavaBean findByuser_id(int user_id);


    //根据user_Id更新积分和经验和金钱
     int upData(@Param("user_vip") int user_vip,@Param("id") int id,@Param("user_experi") int user_experi, @Param("user_integral") int user_integral,@Param("user_money") double user_money);
}
