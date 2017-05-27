package cn.Service;

import cn.Dao.UserDao;
import cn.Entity.userJavaBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.OutputStream;
import java.util.List;

/**
 * Created by Administrator on 2017/4/29.
 */

@Service("userService")
public class UserServiceImpl implements UserService {

    private  UserDao userDao;
    private  userJavaBean user;

    @Autowired
    public UserServiceImpl(UserDao userDao, userJavaBean user) {
        this.userDao = userDao;
        this.user = user;
    }

    public userJavaBean login(String account, String password) {
        return userDao.judgeAccAndPas(account, password);
    }

    public boolean register(userJavaBean user) {
        return userDao.putData(user);
    }

    public boolean judgeAccount(String user_account) {
        //返回 true 证明账号可以使用
        int i = userDao.judgeAccount(user_account);

        return i == 0;
    }

    public boolean judgeName(String user_name) {
        //返回 true 证明昵称可以使用
        int i = userDao.judgeName(user_name);


        return i==0;
    }

    public boolean judgeVerCode(HttpServletRequest request, String verCode) {
        return false;
    }

    public void creadVerCode(HttpSession session, OutputStream outputStream) {

    }

    public userJavaBean findByAccount(String user_account) {
        return userDao.findByAccount(user_account);
    }

    public List<userJavaBean> findAllVip() {
        return userDao.findAllVip();
    }

    public boolean upData(int id, int user_vip, int user_experi, int user_integral,double user_money) {
        int i = userDao.upData(user_vip, id, user_experi, user_integral,user_money);
        return i!=0;
    }

    public boolean recharge(userJavaBean user, String rechargemoney) {
        double money=user.getUser_money();
        if(rechargemoney.equals("1")){
            System.out.println("this is 1");
            money+=100;
        }else if(rechargemoney.equals("2")){
            System.out.println("this is 2");
            money+=200;
        }else if (rechargemoney.equals("3")){
            System.out.println("this is 3");
            money+=300;
        }else {
            System.out.println("this is other");
            money+=100;
        }
        return this.upData(user.getUser_id(), user.getUser_vip(), user.getUser_experi(), user.getUser_integral(), money);


    }

    public userJavaBean findByuser_id(int user_id) {

        return userDao.findByuser_id(user_id);
    }
}
