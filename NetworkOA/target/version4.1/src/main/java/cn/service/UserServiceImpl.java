package cn.service;

import cn.dao.UserDaoImpl;
import cn.entity.userJavaBean;
import cn.util.VerifyCodeUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.OutputStream;

/**
 * Created by Administrator on 2017/4/10.
 */
public class UserServiceImpl implements UserService {


    public userJavaBean login(String account, String password) {

        UserDaoImpl userDao=new UserDaoImpl();
        return userDao.judgeAccAndPas(account, password);
    }

    public boolean register(String user_account, String user_password, String user_name) {

        UserDaoImpl userDao=new UserDaoImpl();
        boolean b = userDao.judgeAccount(user_account);
        boolean b1 = userDao.judgeName(user_name);
        if(!b&&!b1) return userDao.putData(user_account, user_password, user_name);
        return false;
    }

    public boolean judgeAccount(String user_account) {

        UserDaoImpl userDao=new UserDaoImpl();
        return userDao.judgeAccount(user_account);

    }

    public boolean judgeName(String user_name) {

        UserDaoImpl userDao=new UserDaoImpl();

        return userDao.judgeName(user_name);
    }

    public boolean judgeVerCode(HttpServletRequest request, String verCode) {
        HttpSession session=request.getSession(true);
        System.out.println(verCode);
        System.out.println(session.getAttribute("verCode"));
        if (verCode!=null){
            if (verCode.equals(session.getAttribute("verCode"))){
                return true;
            }else {
                request.setAttribute("verCodeMessage","验证码错啦~");
                return false;
            }
        }
        request.setAttribute("verCodeMessage","验证码错啦~");
        return false;


    }


    public void creadVerCode(HttpSession session, OutputStream outputStream) {
        int w=100;
        int h=30;
        String verifyCode= VerifyCodeUtils.generateVerifyCode(4);
        session.setAttribute("verCode",verifyCode.toLowerCase());

        try {
            VerifyCodeUtils.outputImage(w,h,outputStream,verifyCode);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
