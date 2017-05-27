package cn.Service;

import cn.Dao.commentDao;
import cn.Entity.commentJavaBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/5/11.
 */

@Service("CommentService")
public class CommentServiceImpl implements CommentService {
    private final commentDao commentDao;
    private final commentJavaBean commentJavaBean;
    @Autowired
    public CommentServiceImpl(commentDao commentDao, commentJavaBean commentJavaBean) {
        this.commentDao = commentDao;
        this.commentJavaBean = commentJavaBean;
    }

    public List<commentJavaBean> selectByVenue_name(String venue_name) {
        return commentDao.selectByVenue_name(venue_name);
    }

    public boolean putDataByVenue_name(int user_id,String user_name,String comment_text,String venue_name) {
        commentJavaBean.setUser_id(user_id);
        commentJavaBean.setUser_name(user_name);
        commentJavaBean.setComment_text(comment_text);
        commentJavaBean.setVenue_name(venue_name);

        return commentDao.putDataByVenue_name(commentJavaBean)!=0;
    }

    public List<commentJavaBean> selectAll() {
        return commentDao.selectAll();
    }

}
