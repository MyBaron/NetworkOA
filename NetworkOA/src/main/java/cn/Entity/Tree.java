package cn.Entity;

/**
 * Created by baron on 17-8-26.
 */
public class Tree {
    private int id;
    private int up_id;
    private String text;
    private boolean children;

    public Tree(int id, int up_id, String text, boolean Children) {
        this.id = id;
        this.up_id = up_id;
        this.text = text;
        this.children = Children;
    }

    @Override
    public String toString() {
        return "Tree{" +
                "id=" + id +
                ", up_id=" + up_id +
                ", text='" + text + '\'' +
                ", isChildren=" + children +
                '}';
    }

    public Tree() {
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

    public boolean children() {
        return children;
    }

    public void setChildren(boolean children) {
        this.children = children;
    }
}