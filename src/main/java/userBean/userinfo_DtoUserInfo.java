package userBean;

public class userinfo_DtoUserInfo {
    private int no;
    private int age;
    private String name;
    private String email;

    public userinfo_DtoUserInfo() {
    }

    public userinfo_DtoUserInfo(int no, int age, String name, String email) {
        this.no = no;
        this.age = age;
        this.name = name;
        this.email = email;
    }

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "userinfo_DtoUserInfo{" +
                "no=" + no +
                ", age=" + age +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
