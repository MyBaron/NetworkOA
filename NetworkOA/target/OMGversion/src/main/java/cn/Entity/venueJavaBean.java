package cn.Entity;

/**
 * Created by Administrator on 2017/5/6.
 * 场馆
 */
public class venueJavaBean {
    private int venue_id;
    private String venue_name;
    private int  venue_open;
    private String venue_address;
    private String venue_phone;
    private int venue_total;
    private String venue_img;
    private String venue_begin;
    private String venue_close;
    private int venue_price;



    public venueJavaBean(int venue_id, String venue_name, int venue_open, String venue_address, String venue_phone, int venue_totle, String venue_img, String venue_begin, String venue_close,int venue_price) {
        this.venue_id = venue_id;
        this.venue_name = venue_name;
        this.venue_open = venue_open;
        this.venue_address = venue_address;
        this.venue_phone = venue_phone;
        this.venue_total = venue_totle;
        this.venue_img = venue_img;
        this.venue_begin = venue_begin;
        this.venue_close = venue_close;
        this.venue_price =venue_price;
    }
    public void setAll(int venue_id, int venue_open, String venue_address, String venue_phone, int venue_total, String venue_begin, String venue_close, int venue_price) {
        this.venue_id = venue_id;
       // this.venue_name = venue_name;
        this.venue_open = venue_open;
        this.venue_address = venue_address;
        this.venue_phone = venue_phone;
        this.venue_total = venue_total;
        //this.venue_img = venue_img;
        this.venue_begin = venue_begin;
        this.venue_close = venue_close;
        this.venue_price =venue_price;
    }


    @Override
    public String toString() {
        return "venueJavaBean{" +
                "venue_id=" + venue_id +
                ", venue_name='" + venue_name + '\'' +
                ", venue_open=" + venue_open +
                ", venue_address='" + venue_address + '\'' +
                ", venue_phone='" + venue_phone + '\'' +
                ", venue_total=" + venue_total +
                ", venue_img='" + venue_img + '\'' +
                ", venue_begin='" + venue_begin + '\'' +
                ", venue_close='" + venue_close + '\'' +
                ", venue_price=" + venue_price +
                '}';
    }

    public venueJavaBean() {
        super();
    }

    public int getVenue_id() {
        return venue_id;
    }

    public void setVenue_id(int venue_id) {
        this.venue_id = venue_id;
    }

    public String getVenue_name() {
        return venue_name;
    }

    public void setVenue_name(String venue_name) {
        this.venue_name = venue_name;
    }

    public int getVenue_open() {
        return venue_open;
    }

    public void setVenue_open(int venue_open) {
        this.venue_open = venue_open;
    }

    public String getVenue_address() {
        return venue_address;
    }

    public void setVenue_address(String venue_address) {
        this.venue_address = venue_address;
    }

    public String getVenue_phone() {
        return venue_phone;
    }

    public void setVenue_phone(String venue_phone) {
        this.venue_phone = venue_phone;
    }

    public int getVenue_total() {
        return venue_total;
    }

    public void setVenue_total(int venue_total) {
        this.venue_total = venue_total;
    }

    public String getVenue_img() {
        return venue_img;
    }

    public void setVenue_img(String venue_img) {
        this.venue_img = venue_img;
    }

    public String getVenue_begin() {
        return venue_begin;
    }

    public void setVenue_begin(String venue_begin) {
        this.venue_begin = venue_begin;
    }

    public String getVenue_close() {
        return venue_close;
    }

    public void setVenue_close(String venue_close) {
        this.venue_close = venue_close;
    }

    public int getVenue_price() {
        return venue_price;
    }

    public void setVenue_price(int venue_price) {
        this.venue_price = venue_price;
    }


}
