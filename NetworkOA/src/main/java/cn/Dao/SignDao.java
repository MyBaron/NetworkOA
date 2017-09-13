package cn.Dao;

import cn.Entity.SignJB;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by baron on 17-6-4.
 * 对sign数据表进行操作
 */
@Component
public interface SignDao {


    //根据月份进行查询
    List<SignJB> findByMonth(String month);

    //根据姓名，月份进行查询
    List<SignJB> fingByNameAndMonth(String myname,String month);

    //根据姓名，月份查询总时长
    double findTotalLongTime(String myname,String month);

    //查询当天所有签到
    List<SignJB> findTody(String tody);


    //存数据
    int putData(SignJB signJB);


}
