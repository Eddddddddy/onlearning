package com.eddy.onlearning.bean;

public class Administrator {
    private int a_id;
    private String a_name;
    private String a_email;
    private String a_password;
    private String a_password_salt;

    public String getA_password_salt() {
        return a_password_salt;
    }

    public void setA_password_salt(String a_password_salt) {
        this.a_password_salt = a_password_salt;
    }

    public int getA_id() {
        return a_id;
    }

    public void setA_id(int a_id) {
        this.a_id = a_id;
    }

    public String getA_name() {
        return a_name;
    }

    public void setA_name(String a_name) {
        this.a_name = a_name;
    }

    public String getA_email() {
        return a_email;
    }

    public void setA_email(String a_email) {
        this.a_email = a_email;
    }

    public String getA_password() {
        return a_password;
    }

    public void setA_password(String a_password) {
        this.a_password = a_password;
    }
}
