package cn.Service;

import cn.Entity.AdministratorJB;

import java.util.List;

/**
 * Created by Administrator on 2017/5/14.
 */

public interface AdministratorService {

    //查实用户名是否已存在
    boolean judgeAccount(String ad_account);

    //登录
    AdministratorJB login(String account, String password);

    //把数据存进数据库（
    boolean putData(AdministratorJB ad);

    //获取所有的管理员名单
    List<AdministratorJB> selectAll();
}
