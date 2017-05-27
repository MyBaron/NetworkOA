package cn.Entity;

import java.sql.Timestamp;

/**
 * Created by Administrator on 2017/4/27.
 */
public class gymnasiumJavaBean {
    private int gym_id;
    private int user_id;
    private int gym_long_time;
    private Timestamp gym_begin_time;
    private Timestamp gym_time;
    private String user_name;
    private String gym_name;
    private double gym_money;

    public gymnasiumJavaBean(int gym_id, int user_id, int gym_long_time, Timestamp gym_begin_time, Timestamp gym_time, String user_name, String gym_name, double gym_money) {
        this.gym_id = gym_id;
        this.user_id = user_id;
        this.gym_long_time = gym_long_time;
        this.gym_begin_time = gym_begin_time;
        this.gym_time = gym_time;
        this.user_name = user_name;
        this.gym_name = gym_name;
        this.gym_money = gym_money;
    }

    public gymnasiumJavaBean() {
        super();
    }

    @Override
    public String toString() {
        return "gymnasiumJavaBean{" +
                "gym_id=" + gym_id +
                ", user_id=" + user_id +
                ", gym_long_time=" + gym_long_time +
                ", gym_begin_time=" + gym_begin_time +
                ", gym_time=" + gym_time  +
                ", user_name='" + user_name + '\'' +
                ", gym_name='" + gym_name + '\'' +
                ", gym_money=" + gym_money +
                '}';
    }




    public int getGym_id() {
        return gym_id;
    }

    public void setGym_id(int gym_id) {
        this.gym_id = gym_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getGym_long_time() {
        return gym_long_time;
    }

    public void setGym_long_time(int gym_long_time) {
        this.gym_long_time = gym_long_time;
    }

    public Timestamp getGym_begin_time() {
        return gym_begin_time;
    }

    public void setGym_begin_time(Timestamp gym_begin_time) {
        this.gym_begin_time = gym_begin_time;
    }

    public Timestamp getGym_time() {
        return gym_time;
    }

    public void setGym_time(Timestamp gym_time) {
        this.gym_time = gym_time;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getGym_name() {
        return gym_name;
    }

    public void setGym_name(String gym_name) {
        this.gym_name = gym_name;
    }

    public double getGym_money() {
        return gym_money;
    }

    public void setGym_money(double gym_money) {
        this.gym_money = gym_money;
    }
}
