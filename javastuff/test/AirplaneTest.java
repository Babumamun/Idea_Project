import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class AirplaneTest {

    boolean result;

    @Test
    void seatsAvailable() {
        Airplane airplane = new Airplane();
        boolean expected=true;
        result= airplane.seatsAvailable(100,101);
      // System.out.println(result);
       assertEquals(expected,result);
    }
}