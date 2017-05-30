package InnerClasses;

/**
 * Created by park on 2017-05-30.
 */
public class Driver {

    public static void main(String[] args) {
        Flyable a = new SuperHero();
        a.fly();
        a.some(a);


    }

}
