package com.model;

public class User {
    private String id;
    private String pwd;

    public User(String id, String password) {
        this.id = id;
        this.pwd = password;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return pwd;
    }

    public void setPassword(String password) {
        this.pwd = password;
    }
}
