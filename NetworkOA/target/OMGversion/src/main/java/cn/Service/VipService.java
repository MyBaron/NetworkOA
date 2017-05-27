package cn.Service;

import cn.Entity.vipJavaBean;

import java.util.List;

/**
 * Created by Administrator on 2017/5/9.
 *
 * 对会员等级进行处理
 */
public interface VipService {

    //查询所有会员数据
    List<vipJavaBean> findAll();

    //根据user_id查询会员
    vipJavaBean findOne(int user_id);

    //存储会员信息
    boolean putDate(int user_id,int vip_grade);

    //更新会员信息
    boolean upData(int user_id,int vip_grade);
}
