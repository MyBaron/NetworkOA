package cn.Service;

import cn.Dao.vippriceDao;
import cn.Entity.vippriceJavaBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/5/9.
 */
@Service("VippriceService")
public class VippriceServiceImpl implements VippriceService {
    private final vippriceDao vipprice;

    @Autowired
    public VippriceServiceImpl(vippriceDao vippriceDao) {
        this.vipprice = vippriceDao;
    }

    public List<vippriceJavaBean> findAll() {
        return  vipprice.findAll();
    }

    public boolean upData(vippriceJavaBean vipprice) {
        //todo
        return false;
    }

    public boolean putData(vippriceJavaBean vipprice) {
        //todo

        return false;
    }

    public vippriceJavaBean findOne(int vip_grape) {
        return vipprice.findOne(vip_grape);
    }

    public boolean deleteData(int id)
    {//todo
        return false;
    }
}
