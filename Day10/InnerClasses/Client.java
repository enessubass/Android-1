package InnerClasses;

/**
 * Created by park on 2017-05-30.
 */

public class Client {

    public static void main(String[] args) {

        Outer.SetOnClickListener(new Outer.OnClickListener() {
            @Override
            public void OnClick() {

            }
        });
    }
}
