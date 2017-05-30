package InnerClasses;

/**
 * Created by park on 2017-05-18.
 */
class Machine {
    private String name;
    public Machine(String name) {
        this.name = name;
    }

    public void stop(Destroyable a) {

    }
    public void start() {
        System.out.println("starting...");
    }
}

interface Destroyable {
    void destroy();
}

public class Demo {

    public static void main(String[] args) {


        Destroyable a = new Destroyable() {
            public void destroy() {
                System.out.println("Breaking everything...");
            }
        };

        a.destroy();

        Machine myMachine = new Machine("Phone") {
            @Override
            public void start() {
                System.out.println("starting a phone...");
            }
        };
        myMachine.start();

    }
}
