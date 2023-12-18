package APITest;
import com.intuit.karate.junit5.Karate;
public class RunnerGet {
//    @Karate.Test
//    public Karate RunGet() {
//        // getRequest is name feature files
//        return Karate.run("postRequest").relativeTo(getClass());
//    }

//    @Karate.Test
//    public Karate RunPost() {
//        // getRequest is name feature files
//        return Karate.run("getRequest").relativeTo(getClass());
//    }

    @Karate.Test
    public Karate RunPost() {
        // getRequest is name feature files
        return Karate.run("delRequest").relativeTo(getClass());
    }
}
