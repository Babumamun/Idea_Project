package com.nsu.bean;

public class Student {
    private String id;
    private String name;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDept_name() {
        return dept_name;
    }

    public void setDept_name(String dept_name) {
        this.dept_name = dept_name;
    }

    public String getTot_cred() {
        return tot_cred;
    }

    public void setTot_cred(String tot_cred) {
        this.tot_cred = tot_cred;
    }

    private String dept_name;
    private String tot_cred;
}
