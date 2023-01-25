package userBean;

public class Dto_Member {
    private String userid;
    private int userpass;
    private String useremail;

    public Dto_Member() {
    }

    public Dto_Member(String userid, int userpass, String useremail) {
        this.userid = userid;
        this.userpass = userpass;
        this.useremail = useremail;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public int getUserpass() {
        return userpass;
    }

    public void setUserpass(int userpass) {
        this.userpass = userpass;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail;
    }

    @Override
    public String toString() {
        return "Dto_Member{" +
                "userid='" + userid + '\'' +
                ", userpass=" + userpass +
                ", useremail='" + useremail + '\'' +
                '}';
    }
}
