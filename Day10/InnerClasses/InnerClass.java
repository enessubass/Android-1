package InnerClasses;

/**
 * Created by park on 2017-05-30.
 */

class Some {
    void hey() {
        System.out.println("hey");
    }
}

public class InnerClass {
    public static void main(String[] args) {
        Some a = new Some() {
            @Override
            void hey() {
                System.out.println("hello");
            }
        };
    }
}
