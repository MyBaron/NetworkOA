package cn.Entity;

import java.util.Date;

/**
 * Created by Administrator on 2017/5/15.
 */
public class AssociateLogJB {
    private int associate_id;
    private int administrator_id;
    private String administrator_name;
    private String associate_text;
    private Date associate_time;
    private int associate_open;

    public AssociateLogJB(int associate_id, int administrator_id, String administrator_name, String associate_text, Date associate_time, int associate_open) {
        this.associate_id = associate_id;
        this.administrator_id = administrator_id;
        this.administrator_name = administrator_name;
        this.associate_text = associate_text;
        this.associate_time = associate_time;
        this.associate_open = associate_open;
    }

    @Override
    public String toString() {
        return "AssociateLogJB{" +
                "associate_id=" + associate_id +
                ", administrator_id=" + administrator_id +
                ", administrator_name='" + administrator_name + '\'' +
                ", associate_text='" + associate_text + '\'' +
                ", associate_time=" + associate_time +
                ", associate_open=" + associate_open +
                '}';
    }

    public AssociateLogJB() {
        super();
    }

    public int getAssociate_id() {
        return associate_id;
    }

    public void setAssociate_id(int associate_id) {
        this.associate_id = associate_id;
    }

    public int getAdministrator_id() {
        return administrator_id;
    }

    public void setAdministrator_id(int administrator_id) {
        this.administrator_id = administrator_id;
    }

    public String getAdministrator_name() {
        return administrator_name;
    }

    public void setAdministrator_name(String administrator_name) {
        this.administrator_name = administrator_name;
    }

    public String getAssociate_text() {
        return associate_text;
    }

    public void setAssociate_text(String associate_text) {
        this.associate_text = associate_text;
    }

    public Date getAssociate_time() {
        return associate_time;
    }

    public void setAssociate_time(Date associate_time) {
        this.associate_time = associate_time;
    }

    public int getAssociate_open() {
        return associate_open;
    }

    public void setAssociate_open(int associate_open) {
        this.associate_open = associate_open;
    }
}
