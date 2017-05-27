package cn.Service;

import cn.Dao.AdministratorDao;
import cn.Entity.AdministratorJB;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/5/14.
 */
@Service("AdministratorService")
public class AdministratorServiceImpl implements AdministratorService {
    private final AdministratorDao administratorDao;
    private Logger logger;
    @Autowired
    public AdministratorServiceImpl(AdministratorDao administratorDao) {
        this.administratorDao = administratorDao;
        logger=Logger.getLogger(AdministratorServiceImpl.class);
    }


    public boolean judgeAccount(String ad_account) {
        int i = administratorDao.judgeAccount(ad_account);
        return i==0;
    }

    public AdministratorJB login(String account, String password) {
       return administratorDao.judgeAccAndPas(account,password);

    }

    public boolean putData(AdministratorJB ad) {
        //todo
        return false;
    }

    public List<AdministratorJB> selectAll() {

        //todo
        return null;
    }
}
