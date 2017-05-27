package cn.Dao;

import cn.Entity.WorkLogJB;

import java.util.List;

/**
 * Created by Administrator on 2017/5/14.
 * 对worklog数据表进行操作
 */
public interface WorkLogDao {


    //查询总条数
    int findtotal();

    //提取多小条记录
    List<WorkLogJB> findByAmount(int start,int end);

    //提取全部记录
    List<WorkLogJB> findAll();

    //存储内容
    int putData(WorkLogJB workLogJB);
}
