package cn.entity;

import java.sql.Timestamp;

/**
 * Created by Administrator on 2017/4/16.
 */
public class MessageJavaBean {
    private int id;
    private String user_name;
    private int user_id;
    private String message_test;
    private Timestamp message_time;

    public MessageJavaBean(int id, String user_name, int user_id, String message_test, Timestamp message_time) {
        this.id = id;
        this.user_name = user_name;
        this.user_id = user_id;
        this.message_test = message_test;
        this.message_time = message_time;
    }

    public MessageJavaBean() {
        super();
    }

    @Override
    public String toString() {
        return "MessageJavaBean{" +
                "id=" + id +
                ", user_name='" + user_name + '\'' +
                ", user_id='" + user_id + '\'' +
                ", message_test='" + message_test + '\'' +
                ", message_time=" + message_time +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getMessage_test() {
        return message_test;
    }

    public void setMessage_test(String message_test) {
        this.message_test = message_test;
    }

    public Timestamp getMessage_time() {
        return message_time;
    }

    public void setMessage_time(Timestamp message_time) {
        this.message_time = message_time;
    }
}
