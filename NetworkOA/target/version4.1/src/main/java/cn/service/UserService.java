package cn.service;

import cn.entity.userJavaBean;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.OutputStream;

/**
 * Created by Administrator on 2017/4/10.
 */
public interface UserService {

    //login
    abstract userJavaBean login(String account,String password);

    //register
    abstract boolean register(String user_account,String user_password,String user_name);

    //judgeAccount
    abstract  boolean judgeAccount(String user_account);

    //judgeName
    abstract  boolean judgeName(String user_name);

    //judgeverCode
    abstract  boolean judgeVerCode(HttpServletRequest request,String verCode);

    //cread the verCode
    abstract void creadVerCode(HttpSession session, OutputStream outputStream);

}
