public class JniSample {

    public native int sayHello();

    public static void main(String[] args) {

        System.loadLibrary("JniSample");
        System.out.println("\n In java main \n");

        JniSample s = new JniSample();
        s.sayHello();
    }
}