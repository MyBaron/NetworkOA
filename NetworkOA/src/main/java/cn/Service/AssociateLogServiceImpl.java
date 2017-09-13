package cn.Service;

import cn.Dao.AssociateLogDao;
import cn.Entity.AssociateLogJB;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * Created by Administrator on 2017/5/15.
 */
@Service("AssociateService")
public class AssociateLogServiceImpl implements AssociateLogService {

    @Autowired
    private AssociateLogDao associateLogDao;
    private Logger logger;

    public AssociateLogServiceImpl() {
        logger=Logger.getLogger(AdministratorServiceImpl.class);
    }

    public List<AssociateLogJB> selectByAssociate() {
        return associateLogDao.selectByAssociate();
    }

    public List<AssociateLogJB> selectAll() {


        return associateLogDao.selectAll();
    }

    public List<AssociateLogJB> findByAmount(int page, int total, int sum) {
        int start = (page-1)*10;

        if(start<0){
            start=0;
        }
         return associateLogDao.findByAmount(start,10);

    }


    public boolean updataByAssocitaLog_id( String associate_text,int associate_id) {
        int i = associateLogDao.updataByAssocitaLog_id(associate_text,associate_id);

        return i!=0;
    }

    public boolean updataAssociate_open( int associate_open,int associate_id) {

        int i = associateLogDao.updataAssociate_open(associate_open, associate_id);
        return i!=0;
    }

    public int findTotal() {

        return associateLogDao.findTotal();
    }

    public boolean putData(int administrator_id, String associate_text) {
        return associateLogDao.putData(administrator_id,associate_text)!=0;
    }
}
