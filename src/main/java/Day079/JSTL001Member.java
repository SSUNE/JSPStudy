package Day079;

public class JSTL001Member {
    private String name;
    private int age;

    public JSTL001Member() {
        super();
    }

    public JSTL001Member(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "JSTL001Member{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }
}
