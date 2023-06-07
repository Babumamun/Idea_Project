package com.example;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class ExampleTest {
    int result;
    int result1;
    Example example=new Example(80,20);


    @Test
    void function_A() {
        result=example.Function_A(8,8);
        assertEquals(-72,result);

    }

    @Test
    void function_B() {
        result1=example.Function_B(-100);
        assertEquals(100,result1);

    }

}