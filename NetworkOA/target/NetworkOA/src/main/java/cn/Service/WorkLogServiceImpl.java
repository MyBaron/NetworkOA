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

    private final WorkLogDao workLogDao;
    private final WorkLogJB workLogJB;
    @Autowired
    public WorkLogServiceImpl(WorkLogDao workLogDao, WorkLogJB workLogJB) {
        this.workLogDao = workLogDao;
        this.workLogJB = workLogJB;
    }

    public int findtotal() {
        return workLogDao.findtotal();
    }
    public List<WorkLogJB> findByAmount(int page, int total,int sum) {
        int start,end;
        start=total-sum*page;
        end=total-sum*(page-1);
        if(start<0){
            start=0;
        }
        System.out.println(start+" and "+end);

        return workLogDao.findByAmount(start,end);
    }

    public List<WorkLogJB> findAll() {
        //todo

        return null;
    }

    public boolean putData(int ad_id, String context) {
       workLogJB.setAdministrator_id(ad_id);
       workLogJB.setWork_text(context);
        int i = workLogDao.putData(workLogJB);
        return i!=0;
    }
}
