package com.study.bean;

import com.alibaba.fastjson.JSON;

public class MyResponse<T> {
    private boolean isSuccess;
    private String msg;
    private T payload;

    public MyResponse() {
    }

    public MyResponse(boolean isSuccess, String msg, T payload) {
        this.isSuccess = isSuccess;
        this.msg = msg;
        this.payload = payload;
    }

    public static String success(Object payload) {
        return JSON.toJSONString(new MyResponse(true,"请求成功",payload));
    }

    public static String success(String msg, Object payload) {
       return JSON.toJSONString(new MyResponse(true,msg,payload));
    }

    public static String failed(Object payload) {
        return JSON.toJSONString(new MyResponse(false,"请求失败",payload));
    }

    public static String failed(String msg, Object payload) {
        return JSON.toJSONString(new MyResponse(false,msg,payload));
    }

    public boolean isSuccess() {
        return isSuccess;
    }

    public void setSuccess(boolean success) {
        isSuccess = success;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getPayload() {
        return payload;
    }

    public void setPayload(T payload) {
        this.payload = payload;
    }
}
