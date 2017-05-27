package cn.Service;

import cn.Entity.commentJavaBean;

import java.util.List;

/**
 * Created by Administrator on 2017/5/11.
 * 评论区
 */
public interface CommentService {

    //根据球场名查找评论
    List<commentJavaBean> selectByVenue_name(String venue_name);

    //插入数据
    boolean putDataByVenue_name(int user_id,String user_name,String comment_text,String venue_name);


    //查询所有评论
    List<commentJavaBean> selectAll();
}
