package com.nsu.bean;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

public class User {
    @NotBlank(message = "{user.name.required}")
    private String name;
    @Length(min=6,message = "{user.password.minLength}")
    private String password;
    @Range(min= 1,max = 120,message = " Age should between {min} and {max}")
    private int age;
    @Pattern(regexp = "(19|20)\\d{2}-((1[0-2])|(0[1-9]))-(([0-2][0-9])|(3[0-1]))",message = "invalid birth")
    private String birth;

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    }

