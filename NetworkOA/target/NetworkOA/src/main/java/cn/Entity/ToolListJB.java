package cn.Entity;

import java.util.Date;

/**
 * Created by Administrator on 2017/5/15.
 */
public class ToolListJB {
    private int tool_id;
    private String tool_name;
    private int tool_sum;
    private String tool_principal;
    private Date tool_time;

    public ToolListJB(int tool_id, String tool_name, int tool_sum, String tool_principal, Date tool_time) {
        this.tool_id = tool_id;
        this.tool_name = tool_name;
        this.tool_sum = tool_sum;
        this.tool_principal = tool_principal;
        this.tool_time = tool_time;
    }

    @Override
    public String toString() {
        return "ToolListJB{" +
                "tool_id=" + tool_id +
                ", tool_name='" + tool_name + '\'' +
                ", tool_sum=" + tool_sum +
                ", tool_principal='" + tool_principal + '\'' +
                ", tool_time=" + tool_time +
                '}';
    }

    public int getTool_id() {
        return tool_id;
    }

    public void setTool_id(int tool_id) {
        this.tool_id = tool_id;
    }

    public String getTool_name() {
        return tool_name;
    }

    public void setTool_name(String tool_name) {
        this.tool_name = tool_name;
    }

    public int getTool_sum() {
        return tool_sum;
    }

    public void setTool_sum(int tool_sum) {
        this.tool_sum = tool_sum;
    }

    public String getTool_principal() {
        return tool_principal;
    }

    public void setTool_principal(String tool_principal) {
        this.tool_principal = tool_principal;
    }

    public Date getTool_time() {
        return tool_time;
    }

    public void setTool_time(Date tool_time) {
        this.tool_time = tool_time;
    }

    public ToolListJB() {
        super();
    }
}
