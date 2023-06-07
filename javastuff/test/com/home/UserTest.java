package com.home;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class UserTest {
    @Test
    void addUser() {

        User user= new User();
        user.setName("Mamun");
        user.setPassword("123423");
        System.out.println(user.getName());
        System.out.println(user.getPassword());
    }

}