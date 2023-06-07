package com.mooctest;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class TriangleTest {
    Triangle T1 = new Triangle(2, 3, 4);

    @Test
    public void testIsTriangle() {
        assertEquals(true, T1.isTriangle(T1));
    }

    @Test
    public void getType(){
        assertEquals(true, T1.getType(T1));
    }

}