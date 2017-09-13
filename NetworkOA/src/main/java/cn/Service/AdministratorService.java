package cn.Service;

import cn.Entity.AdministratorJB;
import cn.Entity.VisterAndTimeJB;

import java.util.LinkedList;
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
    boolean putData(String name,String account ,String password);

    //获取所有的管理员名单
    List<AdministratorJB> selectAll();

    //修改数据
    boolean alterData(String name,String account ,String password,int id);

    //最近访客
    LinkedList<VisterAndTimeJB>  vister(AdministratorJB administratorJB, LinkedList<VisterAndTimeJB> linkedList);
}
