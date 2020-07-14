package stock;

import com.intuit.karate.junit5.Karate;

public class StockRunner {
    @Karate.Test
    Karate testAll() {
        return Karate.run("kpl").relativeTo(getClass());
    }
}
