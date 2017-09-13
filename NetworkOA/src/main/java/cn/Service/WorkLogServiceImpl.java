package cn.Service;

import cn.Dao.WorkLogDao;
import cn.Entity.WorkLogJB;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/5/15.
 */

@Service("WorkLogService")
public class WorkLogServiceImpl implements WorkLogService {

    @Autowired
    private  WorkLogDao workLogDao;
    @Autowired
    private  WorkLogJB workLogJB;


    public int findtotal() {
        return workLogDao.findtotal();
    }
    public List<WorkLogJB> findByAmount(int page, int total,int sum) {
        int start;
        start=(page-1)*10;
        if(start<0){
            start=0;
        }
        return workLogDao.findByAmount(start,10);
    }

    public List<WorkLogJB> findAll() {
        //todo
        return null;
    }

    @Override
    public String findById(int id) {

        if(id!=0) {
          return workLogDao.findById(id);
        }
        return null;
    }

    public boolean putData(int ad_id, String context) {
       workLogJB.setAdministrator_id(ad_id);
       workLogJB.setWork_text(context);
       int i = workLogDao.putData(workLogJB);
       return i!=0;
    }
}
