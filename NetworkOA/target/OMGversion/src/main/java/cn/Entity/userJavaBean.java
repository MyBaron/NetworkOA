package cn.Entity;

/**
 * Created by Administrator on 2017/4/27.
 * 用户
 */
public class userJavaBean {

    private  int user_id;
    private  String user_account;
    private  String user_password;
    private  String user_name;
    private  double user_money;
    private  int user_vip;
    private  int user_experi;
    private  String user_phone;
    private  int user_integral;

    @Override
    public String toString() {
        return "userJavaBean{" +
                "user_id=" + user_id +
                ", user_account='" + user_account + '\'' +
                ", user_password='" + user_password + '\'' +
                ", user_name='" + user_name + '\'' +
                ", user_money=" + user_money +
                ", user_vip=" + user_vip +
                ", user_experi=" + user_experi +
                ", user_phone='" + user_phone + '\'' +
                ", user_integral=" + user_integral +
                '}';
    }

    public userJavaBean() {
        super();
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_account() {
        return user_account;
    }

    public void setUser_account(String user_account) {
        this.user_account = user_account;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public double getUser_money() {
        return user_money;
    }

    public void setUser_money(double user_money) {
        this.user_money = user_money;
    }

    public int getUser_vip() {
        return user_vip;
    }

    public void setUser_vip(int user_vip) {
        this.user_vip = user_vip;
    }

    public int getUser_experi() {
        return user_experi;
    }

    public void setUser_experi(int user_experi) {
        this.user_experi = user_experi;
    }

    public int getUser_integral() {
        return user_integral;
    }

    public void setUser_integral(int user_integral) {
        this.user_integral = user_integral;
    }

    public userJavaBean(int user_id, String user_account, String user_password, String user_name, double user_money, int user_vip, int user_experi, String user_phone, int user_integral) {
        this.user_id = user_id;
        this.user_account = user_account;
        this.user_password = user_password;
        this.user_name = user_name;
        this.user_money = user_money;
        this.user_vip = user_vip;
        this.user_experi = user_experi;
        this.user_phone = user_phone;
        this.user_integral = user_integral;
    }
}
