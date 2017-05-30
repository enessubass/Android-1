package InnerClasses;

/**
 * Created by park on 2017-05-30.
 */
public class Purse {

    private int num_of_items;
    private String designer;
    private int purse_price;
    private MakeupBrush brush;
    private Towel towel;

    public Purse(int num, String designer, int purse_price) {
        this.num_of_items = num;
        this.designer = designer;
        this.purse_price = purse_price;
    }

    public Purse(int num, String designer,int pp, String brand, int brush_price) {
        this.num_of_items = num;
        this.designer = designer;
        this.purse_price = pp;
        this.brush = new MakeupBrush(brand, brush_price);
    }

    public Purse(int num, String designer,int pp, String brand, int brush_price, int tp, int s) {
        this.num_of_items = num;
        this.designer = designer;
        this.purse_price = pp;
        this.brush = new MakeupBrush(brand, brush_price);
        this.towel = new Towel(tp, s);
    }

    public void wash_my_brush() {
        brush.wash();
    }

    private class MakeupBrush {
        private String brand;
        private int brush_price;

        public MakeupBrush(String brand, int brush_price) {
            this.brand = brand;
            this.brush_price = brush_price;
        }

        public void wash() {
            System.out.println("Makeup brush is getting washed.");
        }

    }

    private class Towel {
        private int towel_price;
        private int size;

        public Towel(int tp, int s) {
            towel_price = tp;
            size = s;
        }

        public void wash() {
            System.out.println("Towel getting washed.");
        }

    }

}
