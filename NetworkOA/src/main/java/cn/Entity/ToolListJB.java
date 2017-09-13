package cn.Entity;

import java.sql.Timestamp;

/**
 * Created by Administrator on 2017/5/15.
 */
public class ToolListJB {
    private int id;
    private int location_id;
    private String name;
    private String number;
    private String location;      //位置
    private int sum;
    private int re_sum;
    private String remark;
    private Timestamp make_time;

    @Override
    public String toString() {
        return "ToolListJB{" +
                "id=" + id +
                ", location_id=" + location_id +
                ", name='" + name + '\'' +
                ", number='" + number + '\'' +
                ", location='" + location + '\'' +
                ", sum=" + sum +
                ", re_sum=" + re_sum +
                ", remark='" + remark + '\'' +
                ", make_time=" + make_time +
                '}';
    }

    public ToolListJB() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLocation_id() {
        return location_id;
    }

    public void setLocation_id(int location_id) {
        this.location_id = location_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }

    public int getRe_sum() {
        return re_sum;
    }

    public void setRe_sum(int re_sum) {
        this.re_sum = re_sum;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Timestamp getMake_time() {
        return make_time;
    }

    public void setMake_time(Timestamp make_time) {
        this.make_time = make_time;
    }

    public ToolListJB(int id, int location_id, String name, String number, String location, int sum, int re_sum, String remark, Timestamp make_time) {
        this.id = id;
        this.location_id = location_id;
        this.name = name;
        this.number = number;
        this.location = location;
        this.sum = sum;
        this.re_sum = re_sum;
        this.remark = remark;
        this.make_time = make_time;
    }
}
