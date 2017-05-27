package cn.Entity;

import java.util.Date;

/**
 * Created by Administrator on 2017/5/14.
 */
public class WorkLogJB {

    private int work_id;
    private String administrator_name;
    private int  administrator_id;
    private String work_text;
    private Date work_time;

    public WorkLogJB(int work_id, String administrator_name, int administrator_id, String work_text, Date work_time) {
        this.work_id = work_id;
        this.administrator_name = administrator_name;
        this.administrator_id = administrator_id;
        this.work_text = work_text;
        this.work_time = work_time;
    }

    public int getWork_id() {
        return work_id;
    }

    public String getAdministrator_name() {
        return administrator_name;
    }

    public void setAdministrator_name(String administrator_name) {
        this.administrator_name = administrator_name;
    }

    public int getAdministrator_id() {
        return administrator_id;
    }

    public void setAdministrator_id(int administrator_id) {
        this.administrator_id = administrator_id;
    }

    public String getWork_text() {
        return work_text;
    }

    public void setWork_text(String work_text) {
        this.work_text = work_text;
    }

    public Date getWork_time() {
        return work_time;
    }

    public void setWork_time(Date work_time) {
        this.work_time = work_time;
    }

    @Override
    public String toString() {
        return "WorkLogJB{" +
                "work_id=" + work_id +
                ", administrator_name='" + administrator_name + '\'' +
                ", administrator_id=" + administrator_id +
                ", work_text='" + work_text + '\'' +
                ", work_time=" + work_time +
                '}';
    }

    public void setWork_id(int work_id) {
        this.work_id = work_id;
    }

    public WorkLogJB() {
        super();
    }
}
