package cn.Entity;

import java.sql.Timestamp;

/**
 * Created by Administrator on 2017/5/11.
 */
public class commentJavaBean {
    private int comment_id;
    private int user_id;
    private String user_name;
    private String comment_text;
    private String venue_name;
    private Timestamp comment_time;

    public commentJavaBean() {
        super();
    }

    @Override
    public String toString() {
        return "commentJavaBean{" +
                "comment_id=" + comment_id +
                ", user_id=" + user_id +
                ", user_name='" + user_name + '\'' +
                ", comment_text='" + comment_text + '\'' +
                ", venue_name='" + venue_name + '\'' +
                ", comment_time=" + comment_time +
                '}';
    }

    public int getComment_id() {
        return comment_id;
    }

    public void setComment_id(int comment_id) {
        this.comment_id = comment_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getComment_text() {
        return comment_text;
    }

    public void setComment_text(String comment_text) {
        this.comment_text = comment_text;
    }

    public String getVenue_name() {
        return venue_name;
    }

    public void setVenue_name(String venue_name) {
        this.venue_name = venue_name;
    }

    public Timestamp getComment_time() {
        return comment_time;
    }

    public void setComment_time(Timestamp comment_time) {
        this.comment_time = comment_time;
    }

    public commentJavaBean(int comment_id, int user_id, String user_name, String comment_text, String venue_name, Timestamp comment_time) {
        this.comment_id = comment_id;
        this.user_id = user_id;
        this.user_name = user_name;
        this.comment_text = comment_text;
        this.venue_name = venue_name;
        this.comment_time = comment_time;
    }
}
