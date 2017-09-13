package cn.Entity;

import org.springframework.stereotype.Component;

import java.sql.Timestamp;

/**
 * Created by baron on 17-6-9.
 *
 * 行政单基本信息
 */
@Component
public class TeRepairJB {

    private int te_repair_id;
    private String te_repair_name;  //报修人名字
    private int user_id;            //报修人id 如果是注册号就有，否则默认为0
    private String te_repair_address; //地址
    private Timestamp te_repair_time; //报修时间
    private String te_repair_phone;   //电话
    private String te_repair_type;    //报修类型
    private String te_repair_question;  //报修问题
    private String te_repair_message;   //备注
    private int is_deal;                //是否已解决
    private int appraise;               //评价
    private String suggest;            //建议
    private String sign_user;          //签名
    private String principal;          //负责人


    private String information;       //维修处理过程
    private String summarize;         //总的问题概括
    private String assistant;         //最后完成的助理
    private int assistant_id;         //助理id
    private Timestamp finished_time;  //完成时间

    private String bill_id;




    public void playBill(int id,String information,String summarize){
        this.information = information;
        this.summarize = summarize;
        this.te_repair_id = id;
    }




    public void playBill(String te_repair_name, int user_id, String te_repair_address, Timestamp te_repair_time, String te_repair_phone, String te_repair_type, String te_repair_question, String te_repair_message){
        this.te_repair_name = te_repair_name;
        this.user_id = user_id;
        this.te_repair_address = te_repair_address;
        this.te_repair_time = te_repair_time;
        this.te_repair_phone = te_repair_phone;
        this.te_repair_type = te_repair_type;
        this.te_repair_question = te_repair_question;
        this.te_repair_message = te_repair_message;
    }


    public void playBill(int id,String te_repair_name, String te_repair_address, String te_repair_phone, String te_repair_type, String te_repair_question, String te_repair_message){
        this.te_repair_name = te_repair_name;
        this.te_repair_address = te_repair_address;
        this.te_repair_phone = te_repair_phone;
        this.te_repair_type = te_repair_type;
        this.te_repair_question = te_repair_question;
        this.te_repair_message = te_repair_message;
        this.te_repair_id = id;
    }


    public TeRepairJB(int te_repair_id, String te_repair_name, int user_id, String te_repair_address, Timestamp te_repair_time, String te_repair_phone, String te_repair_type, String te_repair_question, String te_repair_message, int is_deal, int appraise, String suggest, String sign_user, String principal, String information, String summarize, String assistant, int assistant_id, Timestamp finished_time, String bill_id) {
        this.te_repair_id = te_repair_id;
        this.te_repair_name = te_repair_name;
        this.user_id = user_id;
        this.te_repair_address = te_repair_address;
        this.te_repair_time = te_repair_time;
        this.te_repair_phone = te_repair_phone;
        this.te_repair_type = te_repair_type;
        this.te_repair_question = te_repair_question;
        this.te_repair_message = te_repair_message;
        this.is_deal = is_deal;
        this.appraise = appraise;
        this.suggest = suggest;
        this.sign_user = sign_user;
        this.principal = principal;
        this.information = information;
        this.summarize = summarize;
        this.assistant = assistant;
        this.assistant_id = assistant_id;
        this.finished_time = finished_time;
        this.bill_id = bill_id;
    }


    public TeRepairJB() {
        super();
    }

    @Override
    public String toString() {
        return "TeRepairJB{" +
                "te_repair_id=" + te_repair_id +
                ", te_repair_name='" + te_repair_name + '\'' +
                ", user_id=" + user_id +
                ", te_repair_address='" + te_repair_address + '\'' +
                ", te_repair_time=" + te_repair_time +
                ", te_repair_phone='" + te_repair_phone + '\'' +
                ", te_repair_type='" + te_repair_type + '\'' +
                ", te_repair_question='" + te_repair_question + '\'' +
                ", te_repair_message='" + te_repair_message + '\'' +
                ", is_deal=" + is_deal +
                ", appraise=" + appraise +
                ", suggest='" + suggest + '\'' +
                ", sign_user='" + sign_user + '\'' +
                ", principal='" + principal + '\'' +
                ", information='" + information + '\'' +
                ", summarize='" + summarize + '\'' +
                ", assistant='" + assistant + '\'' +
                ", assistant_id=" + assistant_id +
                ", finished_time=" + finished_time +
                ", bill_id='" + bill_id + '\'' +
                '}';
    }

    public int getTe_repair_id() {
        return te_repair_id;
    }

    public void setTe_repair_id(int te_repair_id) {
        this.te_repair_id = te_repair_id;
    }

    public String getTe_repair_name() {
        return te_repair_name;
    }

    public void setTe_repair_name(String te_repair_name) {
        this.te_repair_name = te_repair_name;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getTe_repair_address() {
        return te_repair_address;
    }

    public void setTe_repair_address(String te_repair_address) {
        this.te_repair_address = te_repair_address;
    }

    public Timestamp getTe_repair_time() {
        return te_repair_time;
    }

    public void setTe_repair_time(Timestamp te_repair_time) {
        this.te_repair_time = te_repair_time;
    }

    public String getTe_repair_phone() {
        return te_repair_phone;
    }

    public void setTe_repair_phone(String te_repair_phone) {
        this.te_repair_phone = te_repair_phone;
    }

    public String getTe_repair_type() {
        return te_repair_type;
    }

    public void setTe_repair_type(String te_repair_type) {
        this.te_repair_type = te_repair_type;
    }

    public String getTe_repair_question() {
        return te_repair_question;
    }

    public void setTe_repair_question(String te_repair_question) {
        this.te_repair_question = te_repair_question;
    }

    public String getTe_repair_message() {
        return te_repair_message;
    }

    public void setTe_repair_message(String te_repair_message) {
        this.te_repair_message = te_repair_message;
    }

    public int getIs_deal() {
        return is_deal;
    }

    public void setIs_deal(int is_deal) {
        this.is_deal = is_deal;
    }

    public int getAppraise() {
        return appraise;
    }

    public void setAppraise(int appraise) {
        this.appraise = appraise;
    }

    public String getSuggest() {
        return suggest;
    }

    public void setSuggest(String suggest) {
        this.suggest = suggest;
    }

    public String getSign_user() {
        return sign_user;
    }

    public void setSign_user(String sign_user) {
        this.sign_user = sign_user;
    }

    public String getPrincipal() {
        return principal;
    }

    public void setPrincipal(String principal) {
        this.principal = principal;
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public String getSummarize() {
        return summarize;
    }

    public void setSummarize(String summarize) {
        this.summarize = summarize;
    }

    public String getAssistant() {
        return assistant;
    }

    public void setAssistant(String assistant) {
        this.assistant = assistant;
    }

    public int getAssistant_id() {
        return assistant_id;
    }

    public void setAssistant_id(int assistant_id) {
        this.assistant_id = assistant_id;
    }

    public Timestamp getFinished_time() {
        return finished_time;
    }

    public void setFinished_time(Timestamp finished_time) {
        this.finished_time = finished_time;
    }

    public String getBill_id() {
        return bill_id;
    }

    public void setBill_id(String bill_id) {
        this.bill_id = bill_id;
    }
}
