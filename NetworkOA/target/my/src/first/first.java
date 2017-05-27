package first;

/**
 * Created by Administrator on 2017/3/31.
 */
public class first {
    private String name;
    private int age;

    public first() {
        super();
    }

    public first(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    @Override
    public String toString() {
        return "first{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }
}
