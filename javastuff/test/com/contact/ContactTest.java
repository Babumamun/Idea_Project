package com.contact;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Assumptions;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class ContactTest {

    @Test
    public void testValidContact(){
        Contact contact=new Contact("jenny","amme","1234567890");
        Assertions.assertEquals("jenny",contact.getFirstName());
        Assertions.assertEquals("amme",contact.getLastName());
        Assertions.assertEquals("1234567890",contact.getPhoneNumber());


    }

}