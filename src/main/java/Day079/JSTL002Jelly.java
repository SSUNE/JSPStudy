package Day079;

public class JSTL002Jelly {
    private String name;
    private int price;

    public JSTL002Jelly() {
        super();
    }

    public JSTL002Jelly(String name, int price) {
        this.name = name;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "JSTL002Jelly{" +
                "name='" + name + '\'' +
                ", price=" + price +
                '}';
    }
}
