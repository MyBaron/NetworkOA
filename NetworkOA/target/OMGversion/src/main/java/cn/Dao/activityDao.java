package cn.Dao;

import cn.Entity.activityJavaBean;

import java.util.List;

/**
 * Created by Administrator on 2017/5/8.
 * 对activity数据表进行操作
 */
public interface activityDao {


    //查询所有活动信息
    abstract List<activityJavaBean> findAll();

    //存入信息

    abstract int putActicity(activityJavaBean activity);

    //重新自增长
    int renewAuto();

    //删除数据
    int deleteOne(int acticity_id);

}
