package cn.Service;

import cn.Dao.AdministratorDao;
import cn.Entity.AdministratorJB;
import cn.Entity.VisterAndTimeJB;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by Administrator on 2017/5/14.
 */
@Service("AdministratorService")
@Scope("prototype")
public class AdministratorServiceImpl implements AdministratorService {
    private final AdministratorDao administratorDao;
    @Autowired
    VisterAndTimeJB visterAndTimeJB;
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

    public boolean putData(String name,String account ,String password) {
        if(judgeAccount(account)){
            int i = administratorDao.putData(name, account, password);
            return i!=0;
        }

        return true;
    }

    public List<AdministratorJB> selectAll() {
        return administratorDao.selectAll();
    }

    public boolean alterData(String name, String account, String password, int id) {
        int i = administratorDao.alterData(name, account, password, id);
        return i!=0;
    }

    public LinkedList<VisterAndTimeJB> vister(AdministratorJB administratorJB, LinkedList<VisterAndTimeJB> linkedList) {
        logger.info("begin"+visterAndTimeJB+"  and "+linkedList);

        visterAndTimeJB.setName(administratorJB.getAdministrator_name());
        visterAndTimeJB.setTime(creadTime());


        //最近上线人数
        if( linkedList.size()==10){
            linkedList.removeFirst();
            linkedList.add(visterAndTimeJB);
            logger.info("超过10人登录");
        }else {
            linkedList.add(visterAndTimeJB);
            logger.info("最近访客列表"+linkedList);
        }


        return linkedList;

    }


    //获取当前时间
    private String creadTime(){
        SimpleDateFormat simpleDateFormat =new SimpleDateFormat("HH:mm");
        String format = simpleDateFormat.format(new Date());
        return format;
    }
}
