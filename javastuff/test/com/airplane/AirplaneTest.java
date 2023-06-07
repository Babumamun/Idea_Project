package com.airplane;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class AirplaneTest {
    boolean result;
    boolean expected;
    Airplane airplane= new Airplane();
    @Test
    void seatsAvailableTC1() {
        result= airplane.seatsAvailable(0,1);
        expected=false;
        assertEquals(expected,result);
    }


    @Test
    void seatsAvailableTC2() {
        result= airplane.seatsAvailable(60,50);
        expected=true;
        assertEquals(expected,result);
    }

    @Test
    void seatsAvailableTC3() {
        result= airplane.seatsAvailable(-50,60);
        expected=false;
        assertEquals(expected,result);
    }

    @Test
    void seatsAvailableTC4() {
        result= airplane.seatsAvailable(20,a);
        expected=true;
        assertEquals(expected,result);
    }


    @Test
    void seatsAvailableTC5() {
        result= airplane.seatsAvailable(a,30);
        expected=true;
        assertEquals(expected,result);
    }
    @Test
    void seatsAvailableTC6() {
        result= airplane.seatsAvailable(50,-30);
        expected=true;
        assertEquals(expected,result);
    }
    @Test
    void seatsAvailableTC7() {
        result= airplane.seatsAvailable(50,40);
        expected=false;
        assertEquals(expected,result);
    }
    @Test
    void seatsAvailableTC8() {
        result= airplane.seatsAvailable(150,50);
        expected=false;
        assertEquals(expected,result);
    }
}