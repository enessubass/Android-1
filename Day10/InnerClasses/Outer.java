package InnerClasses;

/**
 * Created by park on 2017-05-30.
 */
public class Outer {

    interface OnClickListener {
        void OnClick();
    }

    public static void SetOnClickListener(OnClickListener onClickListener) {

        class Hey implements OnClickListener {
            @Override
            public void OnClick() {

            }
            public void start() {
                System.out.println("start");
            }
        }

        OnClickListener a = new Hey();
        ((Hey) a).start();
    }


}

