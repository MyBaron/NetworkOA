package cn.Entity;

import org.springframework.stereotype.Component;

/**
 * Created by baron on 17-6-5.
 */
@Component
public class VisterAndTimeJB {

    private String name;
    private String time;

    public VisterAndTimeJB(String name, String time) {
        this.name = name;
        this.time = time;
    }

    @Override
    public String toString() {
        return "VisterAndTimeJB{" +
                "name='" + name + '\'' +
                ", time='" + time + '\'' +
                '}';
    }



    public VisterAndTimeJB() {
        super();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
