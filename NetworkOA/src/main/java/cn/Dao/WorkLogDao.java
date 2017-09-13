package cn.Dao;

import cn.Entity.WorkLogJB;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Administrator on 2017/5/14.
 * 对worklog数据表进行操作
 */

@Component
public interface WorkLogDao {


    //查询总条数
    int findtotal();

    //根据id获取内容
    String findById(int id);

    //提取多小条记录
    List<WorkLogJB> findByAmount(int start,int sum);

    //提取全部记录
    List<WorkLogJB> findAll();

    //存储内容
    int putData(WorkLogJB workLogJB);
}
