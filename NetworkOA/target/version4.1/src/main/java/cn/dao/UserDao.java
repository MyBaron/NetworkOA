package cn.dao;

import cn.entity.userJavaBean;

/**
 * Created by Administrator on 2017/4/10.
 */
public interface UserDao {

    //判断账号密码是否正确
    abstract userJavaBean judgeAccAndPas(String user_account,String user_password);

    //查实用户名是否已存在
    abstract boolean judgeAccount(String user_account);

    //查实昵称是否已存在
    abstract boolean judgeName(String user_name);

    //把数据存进数据库（注册成功）
    abstract boolean putData(String user_account,String user_password,String user_name);

}
