package cn.Entity;

/**
 * Created by Administrator on 2017/5/2.
 */
public class managerJavaBean {
     private int manager_id;
     private String manager_name;
     private String manager_password;
     private String manager_account;
     private int manager_right;

    public managerJavaBean(int manager_id, String manager_name, String manager_password, String password, int manager_right) {
        this.manager_id = manager_id;
        this.manager_name = manager_name;
        this.manager_password = manager_password;
        this.manager_account = password;
        this.manager_right = manager_right;
    }

    public managerJavaBean() {
        super();
    }

    @Override
    public String toString() {
        return "managerJavaBean{" +
                "manager_id=" + manager_id +
                ", manager_name='" + manager_name + '\'' +
                ", manager_password='" + manager_password + '\'' +
                ", manager_account='" + manager_account + '\'' +
                ", manager_right=" + manager_right +
                '}';
    }

    public int getManager_id() {
        return manager_id;
    }

    public void setManager_id(int manager_id) {
        this.manager_id = manager_id;
    }

    public String getManager_name() {
        return manager_name;
    }

    public void setManager_name(String manager_name) {
        this.manager_name = manager_name;
    }

    public String getManager_password() {
        return manager_password;
    }

    public void setManager_password(String manager_password) {
        this.manager_password = manager_password;
    }

    public String getManager_account() {
        return manager_account;
    }

    public void setManager_account(String manager_account) {
        this.manager_account = manager_account;
    }

    public int getManager_right() {
        return manager_right;
    }

    public void setManager_right(int manager_right) {
        this.manager_right = manager_right;
    }
}
