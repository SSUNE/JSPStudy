package Day078;

public class ELJoinIno {
    private String name;
    private int age;
    private int stdno;
    private int grade;

    public ELJoinIno(String name, int age, int grade, int stdno) {
        super();
        this.name = name;
        this.age = age;
        this.grade = grade;
        this.stdno = stdno;

    }

    public ELJoinIno() {
        super();
    }

    public ELJoinIno(String name, int age, int grade) {
        super();
        this.name = name;
        this.age = age;
        this.grade = grade;
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

    public int getStdno() {
        return stdno;
    }

    public void setStdno(int stdno) {
        this.stdno = stdno;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    @Override
    public String toString() {
        return "ELJoinIno [name=" + name + ", age=" + age + ", stdno=" + stdno + ", grade=" + grade + "]";
    }


}
