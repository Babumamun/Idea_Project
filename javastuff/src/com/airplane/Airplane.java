package com.airplane;

public class Airplane {

    public boolean seatsAvailable(int freeSeats, int seatsRequired){
     //seatsRequired should not be zero
        boolean rv = false;
        if ((freeSeats >= 0) &&(seatsRequired >= 1) &&(seatsRequired <= freeSeats))
            rv = true;
        return rv;

    }

}
