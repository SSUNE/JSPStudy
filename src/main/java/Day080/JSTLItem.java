package Day080;

public class JSTLItem {
    private int ino;
    private String name;
    private int price;
    private String description;

    public JSTLItem() {
    }

    public JSTLItem(int ino, String name, int price, String description) {
        this.ino = ino;
        this.name = name;
        this.price = price;
        this.description = description;
    }

    public int getIno() {
        return ino;
    }

    public void setIno(int ino) {
        this.ino = ino;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "JSTLItem{" +
                "ino=" + ino +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                '}';
    }
}
