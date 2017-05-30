package InnerClasses;

/**
 * Created by park on 2017-05-30.
 */
public class SuperHero implements Flyable {
    @Override
    public void fly() {
        System.out.println("Flying");
    }

    @Override
    public void some(Flyable a) {
        System.out.println(a);
    }
}
