package cn.Service;

import cn.Dao.managerDao;
import cn.Entity.managerJavaBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/5/3.
 */
@Service("ManagerService")
public class ManagerServiceImpl implements ManagerService {

    private  managerJavaBean manager;
    private  managerDao managerDao;

    @Autowired
    public ManagerServiceImpl(managerJavaBean manager, managerDao managerDao) {
        this.manager = manager;
        this.managerDao = managerDao;
    }

    public managerJavaBean login(String account, String password) {
        if (managerDao==null){
            System.out.println("this is null");
        }
        return managerDao.judgeAccAndPas(account,password);

    }

    public boolean judgeAccount(String manager_account) {
        //ture 证明账号可以使用
        int i = managerDao.judgeAccount(manager_account);
        return i==0;
    }

    public boolean register(managerJavaBean manager) {
        return  managerDao.putData(manager);

    }

    public List<managerJavaBean> selectAll() {

        return managerDao.selectAll();
    }
}
