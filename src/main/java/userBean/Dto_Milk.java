package userBean;

public class Dto_Milk {
    private int mno;
    private String mname;
    private int mprice;

    public Dto_Milk() {
    }

    public Dto_Milk(int mno, String mname, int mprice) {
        this.mno = mno;
        this.mname = mname;
        this.mprice = mprice;
    }

    public int getMno() {
        return mno;
    }

    public void setMno(int mno) {
        this.mno = mno;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public int getMprice() {
        return mprice;
    }

    public void setMprice(int mprice) {
        this.mprice = mprice;
    }

    @Override
    public String toString() {
        return "Dto_Milk{" +
                "mno=" + mno +
                ", mname='" + mname + '\'' +
                ", mprice=" + mprice +
                '}';
    }
}
