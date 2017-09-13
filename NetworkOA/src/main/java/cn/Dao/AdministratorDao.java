package cn.Dao;

import cn.Entity.AdministratorJB;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Administrator on 2017/5/14.
 */
@Component
public interface AdministratorDao {

    //判断账号密码是否正确
    AdministratorJB judgeAccAndPas(String ad_account, String ad_password);

    //查实用户名是否已存在
    int judgeAccount(String ad_account);

    //把数据存进数据库（注册成功）
    int putData(String administrator_name,String administrator_account,String administrator_password);

    //获取所有的管理员名单
    List<AdministratorJB> selectAll();


    //修改数据
    int alterData(String administrator_name,String administrator_account,String administrator_password,int id);

}
