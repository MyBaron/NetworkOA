package cn.Entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Created by baron on 17-6-4.
 */
public class SignJB {
    private int sign_id;
    private String myname;
    private int assistant_id;
    private Date sign_time;
    private String sign_begin;
    private String sign_end;
    private double longtime;
    private Timestamp time;
    private String account_name;

    public SignJB(int sign_id, String myname, int assistant_id, Date sign_time, String sign_begin, String sign_end, double longtime, Timestamp time, String account_name) {
        this.sign_id = sign_id;
        this.myname = myname;
        this.assistant_id = assistant_id;
        this.sign_time = sign_time;
        this.sign_begin = sign_begin;
        this.sign_end = sign_end;
        this.longtime = longtime;
        this.time = time;
        this.account_name = account_name;
    }


    public void  setAll( String myname, int assistant_id, Date sign_time, String sign_begin, String sign_end, double longtime,  String account_name) {

        this.myname = myname;
        this.assistant_id = assistant_id;
        this.sign_time = sign_time;
        this.sign_begin = sign_begin;
        this.sign_end = sign_end;
        this.longtime = longtime;
        this.account_name = account_name;
    }



    @Override
    public String toString() {
        return "SignJB{" +
                "sign_id=" + sign_id +
                ", myname='" + myname + '\'' +
                ", assistant_id=" + assistant_id +
                ", sign_time=" + sign_time +
                ", sign_begin='" + sign_begin + '\'' +
                ", sign_end='" + sign_end + '\'' +
                ", longtime=" + longtime +
                ", time=" + time +
                ", account_name='" + account_name + '\'' +
                '}';
    }

    public SignJB() {
        super();
    }

    public int getSign_id() {
        return sign_id;
    }

    public void setSign_id(int sign_id) {
        this.sign_id = sign_id;
    }

    public String getMyname() {
        return myname;
    }

    public void setMyname(String myname) {
        this.myname = myname;
    }

    public int getAssistant_id() {
        return assistant_id;
    }

    public void setAssistant_id(int assistant_id) {
        this.assistant_id = assistant_id;
    }

    public Date getSign_time() {
        return sign_time;
    }

    public void setSign_time(Date sign_time) {
        this.sign_time = sign_time;
    }

    public String getSign_begin() {
        return sign_begin;
    }

    public void setSign_begin(String sign_begin) {
        this.sign_begin = sign_begin;
    }

    public String getSign_end() {
        return sign_end;
    }

    public void setSign_end(String sign_end) {
        this.sign_end = sign_end;
    }

    public double getLongtime() {
        return longtime;
    }

    public void setLongtime(double longtime) {
        this.longtime = longtime;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public String getAccount_name() {
        return account_name;
    }

    public void setAccount_name(String account_name) {
        this.account_name = account_name;
    }
}
