package cn.Service;

import cn.Entity.activityJavaBean;

import java.util.List;

/**
 * Created by Administrator on 2017/5/8.
 * 调用activityDao进行数据处理
 * 1.查找所有数据
 * 2.存入数据
 *
 */
public interface ActivityService {

    //查询所有活动信息
    abstract List<activityJavaBean> findAll();

    //存入信息
    abstract boolean putActicity(activityJavaBean activity);

    //重新自增长
    boolean renewAuto();

    //删除数据
    boolean deleteOne(int acticity_id);
}
