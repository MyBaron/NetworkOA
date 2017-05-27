package cn.Dao;

import cn.Entity.managerJavaBean;

import java.util.List;

/**
 * Created by Administrator on 2017/5/3.
 */
public interface managerDao {

    //判断账号密码是否正确
    managerJavaBean judgeAccAndPas(String manager_account, String manager_password);

    //查实用户名是否已存在
    int judgeAccount(String manager_account);

    //把数据存进数据库（注册成功）
    boolean putData(managerJavaBean manager);

    //获取所有的管理员名单
    List<managerJavaBean> selectAll();
}
