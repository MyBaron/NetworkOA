package cn.Service;


import cn.Entity.userJavaBean;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.OutputStream;
import java.util.List;

/**
 * Created by Administrator on 2017/4/10.
 */
public interface UserService {

    //login
    userJavaBean login(String account, String password);

    //register
    boolean register(userJavaBean user);

    //judgeAccount
    boolean judgeAccount(String user_account);

    //judgeName
    boolean judgeName(String user_name);

    //judgeverCode
    boolean judgeVerCode(HttpServletRequest request, String verCode);

    //cread the verCode
    void creadVerCode(HttpSession session, OutputStream outputStream);

    //fing one by account
    userJavaBean findByAccount(String user_account);


    //find all vip
    List<userJavaBean> findAllVip();

    //根据Id更新经验和积分
   boolean upData(int id,int user_vip,int user_experi,int user_integral,double user_money);

   //充值
    boolean recharge(userJavaBean user,String rechargemoney);

    //根据user_id查询用户
    userJavaBean findByuser_id(int user_id);

}
