package cn.Service;

import cn.Entity.SignJB;

import java.util.Date;
import java.util.List;

/**
 * Created by baron on 17-6-4.
 */
public interface SignService {

    //根据月份进行查询
    List<SignJB> findByMonth(String month);

    //根据姓名，月份进行查询
    List<SignJB> fingByNameAndMonth(String name,String month);

    //根据姓名，月份查询总时长
    double findTotalLongTime(String name,String month);

    //查询当天所有签到
    List<SignJB> findTody(String tody);

    //存数据
    boolean putData(String myname, int assistant_id, Date sign_time, String sign_begin, String sign_end, double longtime, String account_name);
}
