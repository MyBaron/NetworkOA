package cn.Service;

import cn.Entity.venueJavaBean;

import java.util.List;

/**
 * Created by Administrator on 2017/5/6.
 * 对体育馆馆的数据进行处理
 * 1.获取单个场馆信息
 * 2.获取全部场馆信息
 * 3.更改场馆信息
 */
public interface VenueService {

    //查询单个场馆
    abstract venueJavaBean findOneVenue(String venue);

    //查询全部场馆
    abstract List<venueJavaBean> findAllVenue();

    //修改场馆信息
    abstract boolean changeMessage(int venue_id,  int venue_open, String venue_address, String venue_phone, int venue_totle,  String venue_begin, String venue_close,int venue_price);
}
