package cn.Entity;

/**
 * Created by baron on 17-6-3.
 */
public class AssistantJB {
    private int assistant_id;
    private String assistant_name;
    private String assistant_profession;
    private String assistant_grade;
    private String assistant_birthday;
    private String assistant_phone;
    private String assistant_number;
    private int assistant_working;

    @Override
    public String toString() {
        return "AssistantJB{" +
                "assistant_id=" + assistant_id +
                ", assistant_name='" + assistant_name + '\'' +
                ", assistant_profession='" + assistant_profession + '\'' +
                ", assistant_grade='" + assistant_grade + '\'' +
                ", assistant_birthday='" + assistant_birthday + '\'' +
                ", assistant_phone='" + assistant_phone + '\'' +
                ", assistant_number='" + assistant_number + '\'' +
                ", assistant_working=" + assistant_working +
                '}';
    }

    public AssistantJB(int assistant_id, String assistant_name, String assistant_profession, String assistant_grade, String assistant_birthday, String assistant_phone, String assistant_number, int assistant_working) {
        this.assistant_id = assistant_id;
        this.assistant_name = assistant_name;
        this.assistant_profession = assistant_profession;
        this.assistant_grade = assistant_grade;
        this.assistant_birthday = assistant_birthday;
        this.assistant_phone = assistant_phone;
        this.assistant_number = assistant_number;
        this.assistant_working = assistant_working;
    }

    public void setAll(int assistant_id, String assistant_name, String assistant_profession, String assistant_grade, String assistant_birthday, String assistant_phone, String assistant_number, int assistant_working) {
        this.assistant_id = assistant_id;
        this.assistant_name = assistant_name;
        this.assistant_profession = assistant_profession;
        this.assistant_grade = assistant_grade;
        this.assistant_birthday = assistant_birthday;
        this.assistant_phone = assistant_phone;
        this.assistant_number = assistant_number;
        this.assistant_working = assistant_working;
    }

    public void setAll(String assistant_name, String assistant_profession, String assistant_grade, String assistant_birthday, String assistant_phone, String assistant_number, int assistant_working) {
        this.assistant_id = assistant_id;
        this.assistant_name = assistant_name;
        this.assistant_profession = assistant_profession;
        this.assistant_grade = assistant_grade;
        this.assistant_birthday = assistant_birthday;
        this.assistant_phone = assistant_phone;
        this.assistant_number = assistant_number;
        this.assistant_working = assistant_working;
    }

    public AssistantJB() {
        super();
    }

    public int getAssistant_id() {
        return assistant_id;
    }

    public void setAssistant_id(int assistant_id) {
        this.assistant_id = assistant_id;
    }

    public String getAssistant_name() {
        return assistant_name;
    }

    public void setAssistant_name(String assistant_name) {
        this.assistant_name = assistant_name;
    }

    public String getAssistant_profession() {
        return assistant_profession;
    }

    public void setAssistant_profession(String assistant_profession) {
        this.assistant_profession = assistant_profession;
    }

    public String getAssistant_grade() {
        return assistant_grade;
    }

    public void setAssistant_grade(String assistant_grade) {
        this.assistant_grade = assistant_grade;
    }

    public String getAssistant_birthday() {
        return assistant_birthday;
    }

    public void setAssistant_birthday(String assistant_birthday) {
        this.assistant_birthday = assistant_birthday;
    }

    public String getAssistant_phone() {
        return assistant_phone;
    }

    public void setAssistant_phone(String assistant_phone) {
        this.assistant_phone = assistant_phone;
    }

    public String getAssistant_number() {
        return assistant_number;
    }

    public void setAssistant_number(String assistant_number) {
        this.assistant_number = assistant_number;
    }

    public int getAssistant_working() {
        return assistant_working;
    }

    public void setAssistant_working(int assistant_working) {
        this.assistant_working = assistant_working;
    }
}
