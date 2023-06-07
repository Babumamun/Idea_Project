public class Airplane {
    public boolean seatsAvailable(int freeSeats, int seatsRequired) {
        boolean rv = false;
        if ((freeSeats >= 0) && (seatsRequired >= 0) & (seatsRequired <= freeSeats))
            rv = true;
        return rv;
    }
}





//
//    public boolean seatsAvailable(int freeSeats, int seatsRequired){
//
//        boolean rv = false;
//        if ((freeSeats >=0) && (seatsRequired >=1) && (seatsRequired<=freeSeats))
//            rv = true;
//        // required should be grater than 0
//        // freeSeats should be grater than 0
//        return rv;
//    }
//}
//    public boolean seatsAvailable(int freeSeats, int seatsRequired){
//        boolean rv = false;
// if ((freeSeats >=0) && (seatsRequired >= 0) & (seatsRequired <= freeSeats))
// rv = true;
// return rv;
// }