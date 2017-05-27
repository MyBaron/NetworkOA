package cn.Service;

import cn.Entity.managerJavaBean;

import java.util.List;

/**
 * Created by Administrator on 2017/5/3.
 */
public interface ManagerService {
    //login
    managerJavaBean login(String account, String password);

    //judgeAccount
    boolean judgeAccount(String manager_account);

    //register
    boolean register(managerJavaBean manager);

    //获取所以的管理员名单
    List<managerJavaBean> selectAll();
}
