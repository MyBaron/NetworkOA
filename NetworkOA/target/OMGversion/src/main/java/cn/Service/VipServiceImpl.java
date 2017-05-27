package cn.Service;

import cn.Dao.vipDao;
import cn.Entity.vipJavaBean;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/5/9.
 * 对会员等级进行处理
 */
@Service("VipService")
public class VipServiceImpl implements VipService {
    private final vipDao vipDao;
    private final vipJavaBean vipJavaBean;
    private Logger logger;
    @Autowired
    public VipServiceImpl(vipDao vipDao, vipJavaBean vipJavaBean) {
        this.vipDao = vipDao;
        this.vipJavaBean = vipJavaBean;
        logger=Logger.getLogger(VipServiceImpl.class);
    }


    public List<vipJavaBean> findAll() {
        return vipDao.findAll();
    }

    public vipJavaBean findOne(int user_id) {

        return vipDao.findOne(user_id);
    }

    public boolean putDate(int user_id, int vip_grade)
    {
        vipJavaBean.setUser_id(user_id);
        vipJavaBean.setVip_grade(vip_grade);
        int i = vipDao.putDate(vipJavaBean);
        return i!=0;
    }

    public boolean upData(int vip_id, int vip_grade) {
        vipJavaBean.setVip_id(vip_id);
        vipJavaBean.setVip_grade(vip_grade);
        int i = vipDao.putDate(vipJavaBean);
        return i!=0;
    }
}
