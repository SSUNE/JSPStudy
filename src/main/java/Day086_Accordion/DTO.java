package Day086_Accordion;

public class DTO {
    private int no;
    private String name;
    private int pass;

    public DTO() {
    }

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPass() {
        return pass;
    }

    public void setPass(int pass) {
        this.pass = pass;
    }

    public DTO(int no, String name, int age) {
        this.no = no;
        this.name = name;
        this.pass = age;
    }

    @Override
    public String toString() {
        return "DTO{" +
                "no=" + no +
                ", name='" + name + '\'' +
                ", pass=" + pass +
                '}';
    }
}
