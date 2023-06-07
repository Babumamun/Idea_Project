package com.nsu.bean;

import org.hibernate.validator.constraints.Length;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

public class User {
@Valid
    @NotBlank(message = "{user.name.required}")
    private String name;
    @Length(min=6,message = "{user.password.minLength}")
    private String password;

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
