package com.study.controller;

import com.alibaba.fastjson.JSON;
import com.study.bean.User;
import com.study.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

// RestController = @Controller @ResponseBody
@RestController
@RequestMapping("/app")
public class StudentController {

    @Autowired
    UserDao userDao;



    @GetMapping("/getUser")
    public String sayHello(String name){
        return "hello," + name;
    }

//    @GetMapping("/getStudentById")
//    public String getStudent(int id){
//        User student = userDao.getStudentById(id);
//        return JSON.toJSONString(student);
//    }

//    // 传递和返回一个对象
//    @PostMapping("/getUserInfo")
//    public String check(User user){
//        if (user!=null && user.getName().equals("zhangs")&&user.getPwd().equals("123")){
//            user.setImage("/static/image/photo.png");
//        }
//        return JSON.toJSONString(user);
//    }


//    // 传递和返回一个对象
//    @PostMapping("/getUserInfoList")
//    public String checkList(User user){
//
//        List<User> list = new ArrayList();
//        if (user!=null && user.getName().equals("zhangs")&&user.getPwd().equals("123")){
//            user.setImage("/static/image/photo.png");
//        }
//        list.add(user);
//        User student = new User();
//        student.setImage("/static/image/photo2.png");
//        list.add(student);
//        return JSON.toJSONString(list);
//    }
}
