package cn.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2017/4/16.
 */
public interface MessageService {

    //获取数据
     String getMessage(HttpSession session);

     //存储数据
    boolean putMessage(HttpServletRequest request);

}
