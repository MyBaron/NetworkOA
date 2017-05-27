package cn.Service;

import cn.Entity.WorkLogJB;

import java.util.List;

/**
 * Created by Administrator on 2017/5/15.
 */


public interface WorkLogService {

    //查询总条数
    int findtotal();

    //提取多小条记录
    List<WorkLogJB> findByAmount(int page, int total,int sum);

    //提取全部记录
    List<WorkLogJB> findAll();

    //保存数据
    boolean putData(int ad_id,String context);
}
