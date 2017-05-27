package cn.Dao;

import cn.Entity.venueJavaBean;

import java.util.List;

/**
 * Created by Administrator on 2017/5/6.
 * 对体育馆场馆的数据进行处理
 */
public interface venueDao {

    //查询单个场馆
    abstract venueJavaBean findOneVenue(String venue);

    //查询全部场馆
    abstract List<venueJavaBean> findAllVenue();

    //修改场馆信息
    abstract int changeMessage(venueJavaBean venue);
}
