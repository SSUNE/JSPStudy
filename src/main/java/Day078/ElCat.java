package Day078;

public class ElCat {
    private String name;

    public ElCat() {
    }

    public ElCat(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "ElCat{" +
                "name='" + name + '\'' +
                '}';
    }
}
