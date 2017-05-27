package cn.Dao;

import cn.Entity.vippriceJavaBean;

import java.util.List;

/**
 * Created by Administrator on 2017/5/9.]
 * 对vip等级折扣的处理  数据表：vipprice
 */
public interface vippriceDao {

    //获取所有
    List<vippriceJavaBean> findAll();

    //根据id更新数据
    int upData(vippriceJavaBean vipprice);

    //添加数据
    int putData(vippriceJavaBean vipprice);

    //根据vip等级寻找
    vippriceJavaBean findOne(int vip_grape);

    //根据id删除数据
    int deleteData(int id);
}
