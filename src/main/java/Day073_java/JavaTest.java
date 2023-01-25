package Day073_java;

public class JavaTest {
    private int a;
    private int b;

    //// constructor
    public JavaTest() {
    }

    public JavaTest(int a, int b) {
        this.a = a;
        this.b = b;
    }

    public int add(){
        return a+b;
    }

    //// getter & setter
    public int getA() {
        return a;
    }

    public void setA(int a) {
        this.a = a;
    }

    public int getB() {
        return b;
    }

    public void setB(int b) {
        this.b = b;
    }

    @Override
    public String toString() {
        return "JavaTest{" +
                "a=" + a +
                ", b=" + b +
                '}';
    }
}
