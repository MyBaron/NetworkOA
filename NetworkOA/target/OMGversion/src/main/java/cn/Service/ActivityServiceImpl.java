package cn.Service;

import cn.Dao.activityDao;
import cn.Entity.activityJavaBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/5/8.
 */

@Service("ActivityService")
public class ActivityServiceImpl implements ActivityService {

    private final activityDao activityDao;

    @Autowired
    public ActivityServiceImpl(activityDao activityDao) {
        this.activityDao = activityDao;
    }

    public List<activityJavaBean> findAll() {
        return activityDao.findAll();
    }

    public boolean putActicity(activityJavaBean activity) {
        int i = activityDao.putActicity(activity);

        return i!=0;
    }

    public boolean renewAuto() {
        int i = activityDao.renewAuto();
        return i!=0;
    }

    public boolean deleteOne(int acticity_id) {
        int i = activityDao.deleteOne(acticity_id);
        return i!=0;
    }
}
