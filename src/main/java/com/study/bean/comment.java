package com.study.bean;

public class comment {
    public comment(){

    }

    public int getText_id() {
        return text_id;
    }

    public void setText_id(int text_id) {
        this.text_id = text_id;
    }
   public comment(int id,String user_id,String short_text,int text_id,String Author_id){
        this.user_id=user_id;
        this.short_text=short_text;
        this.text_id=text_id;
        this.Author_id=Author_id;
        this.id=id;
   }
   public comment(int id){
        this.id=id;
   }
    private int text_id;
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAuthor_id() {
        return Author_id;
    }

    public void setAuthor_id(String author_id) {
        Author_id = author_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    private int id;

    public comment(int id, String author_id, String user_id, String text) {
        this.id = id;
        Author_id = author_id;
        this.user_id = user_id;
        this.text = text;
    }

    private String Author_id;
    private String user_id;
    private String text;

    public String getShort_text() {
        return short_text;
    }

    public void setShort_text(String short_text) {
        this.short_text = short_text;
    }

    private String short_text;

}
