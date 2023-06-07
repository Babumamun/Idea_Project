package com.contact;

import com.airplane.Airplane;

public class AirplaneTest {

    public static void main(String[] args){

        Airplane airplane= new Airplane();
       boolean result= airplane.seatsAvailable(0,1);
        System.out.println(result);
    }
}
