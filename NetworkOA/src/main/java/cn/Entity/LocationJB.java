package cn.Entity;

/**
 * Created by baron on 17-8-31.
 */
public class LocationJB {
    private int id;
    private int up_id;
    private String text;

    public LocationJB(int id, int up_id, String text) {
        this.id = id;
        this.up_id = up_id;
        this.text = text;
    }

    @Override
    public String toString() {
        return "LocationJB{" +
                "id=" + id +
                ", up_id=" + up_id +
                ", text='" + text + '\'' +
                '}';
    }

    public LocationJB() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUp_id() {
        return up_id;
    }

    public void setUp_id(int up_id) {
        this.up_id = up_id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
