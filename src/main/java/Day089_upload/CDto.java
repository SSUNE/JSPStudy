package Day089_upload;

public class CDto {
    private int no;
    private String name;
    private int age;
    private String img;

    //
    public CDto() {
        super();
        // TODO Auto-generated constructor stub
    }

    public CDto(int no, String name, int age, String img) {
        super();
        this.no = no;
        this.name = name;
        this.age = age;
        this.img = img;
    }

    //
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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    //
    @Override
    public String toString() {
        return "CDto [no=" + no + ", name=" + name + ", age=" + age + ", img=" + img + "]";
    }

}
