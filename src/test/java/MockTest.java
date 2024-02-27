import com.intuit.karate.FileUtils;
import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.netty.FeatureServer;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import java.io.File;
import java.util.Collections;

@KarateOptions(tags = {"~@ignore", "@mock"})

public class MockTest {
    String karateOutputPath = "target/surefire-reports";
    private static FeatureServer server;
    @BeforeClass
    public static void   start(){
        File file = FileUtils.getFileRelativeTo(MockTest.class, "alltests/MockServer.feature");
        server = FeatureServer.start(file, 8088, false, Collections.emptyMap());
    }
    @Test
    public void reportTest () {
        Results result = Runner.parallel(getClass(), 1, karateOutputPath);
    }
    @AfterClass
    public static void end (){
        server.stop();
    }
}

