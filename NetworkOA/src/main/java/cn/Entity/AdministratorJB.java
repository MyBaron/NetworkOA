package cn.Entity;

/**
 * Created by Administrator on 2017/5/14.
 */
public class AdministratorJB {
    private int administrator_id;
    private String administrator_name;
    private String administrator_account;
    private String administrator_password;
    private int administrator_right;


    @Override
    public String toString() {
        return "AdministratorJB{" +
                "administrator_id=" + administrator_id +
                ", administrator_name='" + administrator_name + '\'' +
                ", administrator_account='" + administrator_account + '\'' +
                ", administrator_password='" + administrator_password + '\'' +
                ", administrator_right=" + administrator_right +
                '}';
    }

    public AdministratorJB() {
        super();
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

    public String getAdministrator_account() {
        return administrator_account;
    }

    public void setAdministrator_account(String administrator_account) {
        this.administrator_account = administrator_account;
    }

    public String getAdministrator_password() {
        return administrator_password;
    }

    public void setAdministrator_password(String administrator_password) {
        this.administrator_password = administrator_password;
    }

    public int getAdministrator_right() {
        return administrator_right;
    }

    public void setAdministrator_right(int administrator_right) {
        this.administrator_right = administrator_right;
    }

    public AdministratorJB(int administrator_id, String administrator_name, String administrator_account, String administrator_password, int administrator_right) {
        this.administrator_id = administrator_id;
        this.administrator_name = administrator_name;
        this.administrator_account = administrator_account;
        this.administrator_password = administrator_password;
        this.administrator_right = administrator_right;
    }
}
