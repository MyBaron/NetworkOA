package cn.Service;

import cn.Entity.gymnasiumJavaBean;

import java.util.List;

/**
 * Created by Administrator on 2017/5/4.
 */
public interface GymService {
    //查询单个场馆的订单
    abstract List<gymnasiumJavaBean> selectGym(String gym_name);

    //查询所以场馆的订单
    abstract  List<gymnasiumJavaBean> selectGymAll();

    //输入场馆的订单
    abstract boolean insertGym(gymnasiumJavaBean gymnasium);

    //根据user_id查询订单
    List<gymnasiumJavaBean> selectGymByuser_id(int user_id);

    //根据根据单号查询订单
    gymnasiumJavaBean selectByGym_id(int gym_id);
}
