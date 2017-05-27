package cn.Dao;

import cn.Entity.vipJavaBean;

import java.util.List;

/**
 * Created by Administrator on 2017/5/9.
 * 对vip数据的处理
 */
public interface vipDao {

    //查询所有会员数据
    abstract List<vipJavaBean> findAll();

    //根据user_id查询会员
    vipJavaBean findOne(int user_id);

    //存储会员信息
    int putDate(vipJavaBean vip);

    //更新会员信息
    int upData(vipJavaBean vip);
}
