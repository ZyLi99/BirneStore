package com.study.bean;

public class SecretList {
    public SecretList(){

    }

    public SecretList(int like, int melden, String comment, String username, String text, String dateTime) {
        this.like = like;
        this.melden = melden;
        this.comment = comment;
        this.username = username;
        this.text = text;
        DateTime = dateTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private int id;
    public int getLike() {
        return like;
    }

    public void setLike(int like) {
        this.like = like;
    }

    public int getMelden() {
        return melden;
    }

    public void setMelden(int melden) {
        this.melden = melden;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    private int like;
    private int melden;
    private String comment;
    public SecretList(String text){
        this.text=text;
    }
    private String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getDateTime() {
        return DateTime;
    }

    public void setDateTime(String dateTime) {
        DateTime = dateTime;
    }

    private String text;
    private String DateTime;

    public SecretList(String username, String text, String dateTime) {
        this.username = username;
        this.text = text;
        DateTime = dateTime;
    }
    public SecretList(int id,String username, String text, String dateTime) {
        this.username = username;
        this.text = text;
        DateTime = dateTime;
    }


}
