package userBean;

public class Dto_cat {
    private String name;

    public Dto_cat() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Dto_cat{" +
                "name='" + name + '\'' +
                '}';
    }
}
