package com.study.bean;

public class Page {
    public Page(int id, String text, int page_id) {
        this.id = id;
        this.text = text;
        this.page_id = page_id;
    }

     public Page(){

     }
     public Page(int page_id,String text){
        this.id=id;
        this.text=text;
     }
     public Page(int page_id){
        this.page_id=page_id;
     }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public int getPage_id() {
        return page_id;
    }

    public void setPage_id(int page_id) {
        this.page_id = page_id;
    }

    private int id;
    private String text;
    private int page_id;
}
