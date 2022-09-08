package com.study.bean;

import java.util.List;


public class User {
    private int id;


    public User(String userName, String pwd) {
        this.userName = userName;
        this.pwd = pwd;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public User(String name, String email, String userName, String pwd) {
        this.name = name;
        Email = email;
        this.userName = userName;
        this.pwd = pwd;
    }

    private String name;
    private String Email;
    private String userName;
    private String pwd;
    private List<Role> roleList;


    public List<Role> getRoleList() {
        return roleList;
    }

    public void setRoleList(List<Role> roleList) {
        this.roleList = roleList;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }


    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }




    public User() {
    }

    public User(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public User(String userName, int id ) {
        this.id = id;
        this.userName = userName;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }



}
