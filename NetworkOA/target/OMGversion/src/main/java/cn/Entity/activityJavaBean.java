package cn.Entity;

import java.sql.Timestamp;

/**
 * Created by Administrator on 2017/5/8.
 */
public class activityJavaBean {
    private int activity_id;
    private String activity_text;
    private Timestamp activity_time;

    public activityJavaBean(int activity_id, String activity_text, Timestamp activity_time) {
        this.activity_id = activity_id;
        this.activity_text = activity_text;
        this.activity_time = activity_time;
    }

    @Override
    public String toString() {
        return "activityJavaBean{" +
                "activity_id=" + activity_id +
                ", activity_text='" + activity_text + '\'' +
                ", activity_time=" + activity_time +
                '}';
    }

    public activityJavaBean() {
        super();
    }

    public int getActivity_id() {
        return activity_id;
    }

    public void setActivity_id(int activity_id) {
        this.activity_id = activity_id;
    }

    public String getActivity_text() {
        return activity_text;
    }

    public void setActivity_text(String activity_text) {
        this.activity_text = activity_text;
    }

    public Timestamp getActivity_time() {
        return activity_time;
    }

    public void setActivity_time(Timestamp activity_time) {
        this.activity_time = activity_time;
    }
}
