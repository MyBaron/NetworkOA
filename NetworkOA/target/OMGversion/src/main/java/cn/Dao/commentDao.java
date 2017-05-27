package cn.Dao;

import cn.Entity.commentJavaBean;

import java.util.List;

/**
 * Created by Administrator on 2017/5/11.
 *
 * 评论数据的操作
 */
public interface commentDao {

    //根据球场名查找评论
    List<commentJavaBean> selectByVenue_name(String venue_name);

    //插入数据
    int putDataByVenue_name(commentJavaBean comment);

    //查询所有评论
    List<commentJavaBean> selectAll();

}
