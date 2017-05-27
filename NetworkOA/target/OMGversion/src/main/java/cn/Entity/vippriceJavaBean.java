package cn.Entity;

/**
 * Created by Administrator on 2017/5/9.
 */
public class vippriceJavaBean {
    private int id;
    private int vip_grade;
    private double vip_discount;

    public vippriceJavaBean(int id, int vip_grade, double vip_discount) {
        this.id = id;
        this.vip_grade = vip_grade;
        this.vip_discount = vip_discount;
    }

    public vippriceJavaBean() {
        super();
    }

    @Override
    public String toString() {
        return "vippriceJavaBean{" +
                "id=" + id +
                ", vip_grade=" + vip_grade +
                ", vip_discount=" + vip_discount +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
}
