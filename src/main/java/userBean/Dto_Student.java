package userBean;

public class Dto_Student {
    private String name;
    private int age;
    private int grade;
    private int studentNum;

    public Dto_Student() {
    }

    public Dto_Student(String name, int age, int grade, int studentNum) {
        this.name = name;
        this.age = age;
        this.grade = grade;
        this.studentNum = studentNum;
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

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    public int getStudentNum() {
        return studentNum;
    }

    public void setStudentNum(int studentNum) {
        this.studentNum = studentNum;
    }

    @Override
    public String toString() {
        return "Dto_Student{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", grade=" + grade +
                ", studentNum=" + studentNum +
                '}';
    }
}
