package Day078;

public class ELMember {
    private int uno;
    private String userid;
    private String userpass;
    private String useremail;

    public ELMember() {
        super();
        // TODO Auto-generated constructor stub
    }

    public ELMember(int uno, String userid, String userpass, String useremail) {
        super();
        this.uno = uno;
        this.userid = userid;
        this.userpass = userpass;
        this.useremail = useremail;
    }

    public ELMember(String userid, String userpass, String useremail) {
        super();
        this.userid = userid;
        this.userpass = userpass;
        this.useremail = useremail;
    }

    public int getUno() {
        return uno;
    }

    public void setUno(int uno) {
        this.uno = uno;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUserpass() {
        return userpass;
    }

    public void setUserpass(String userpass) {
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
        return "ELMember [uno=" + uno + ", userid=" + userid + ", userpass=" + userpass + ", useremail=" + useremail
                + "]";
    }


}
