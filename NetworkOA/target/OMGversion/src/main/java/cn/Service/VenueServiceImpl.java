package cn.Service;

import cn.Dao.venueDao;
import cn.Entity.venueJavaBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/5/6.
 * 对体育馆馆的数据进行处理
 * 1.获取单个场馆信息
 * 2.获取全部场馆信息
 * 3.更改场馆信息
 */

@Service("venueService")
public class VenueServiceImpl implements VenueService {
    private final venueDao venueDao;
    private final venueJavaBean venue;

    @Autowired
    public VenueServiceImpl(venueDao venueDao, venueJavaBean venue) {
        this.venueDao = venueDao;
        this.venue = venue;

    }

    public venueJavaBean findOneVenue(String venue) {
        return venueDao.findOneVenue(venue);
    }

    public List<venueJavaBean> findAllVenue() {
        return venueDao.findAllVenue();
    }

    public boolean changeMessage(int venue_id, int venue_open, String venue_address, String venue_phone, int venue_total, String venue_begin, String venue_close, int venue_price) {
        System.out.println("this is ok");
        venue.setAll(venue_id,venue_open,venue_address,venue_phone, venue_total,venue_begin,venue_close,venue_price);
        System.out.println(venue.toString());
        int i = venueDao.changeMessage(venue);
        return i!=0;
    }
}
