package cn.Entity;

/**
 * Created by Administrator on 2017/5/9.
 *
 * vip表
 */
public class vipJavaBean {

    private int vip_id;
    private int user_id;
    private int vip_grade;
    private double vip_discount;
    private String user_name;

    public vipJavaBean(int vip_id, int user_id, int vip_grade, double vip_discount, String user_name) {
        this.vip_id = vip_id;
        this.user_id = user_id;
        this.vip_grade = vip_grade;
        this.vip_discount = vip_discount;
        this.user_name = user_name;
    }


    @Override
    public String toString() {
        return "vipJavaBean{" +
                "vip_id=" + vip_id +
                ", user_id=" + user_id +
                ", vip_grade=" + vip_grade +
                ", vip_discount=" + vip_discount +
                ", user_name='" + user_name + '\'' +
                '}';
    }

    public vipJavaBean() {
        super();
    }

    public int getVip_id() {
        return vip_id;
    }

    public void setVip_id(int vip_id) {
        this.vip_id = vip_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getVip_grade() {
        return vip_grade;
    }

    public void setVip_grade(int vip_grade) {
        this.vip_grade = vip_grade;
    }

    public double getVip_discount() {
        return vip_discount;
    }

    public void setVip_discount(double vip_discount) {
        this.vip_discount = vip_discount;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }
}
