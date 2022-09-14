package com.study.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.study.bean.*;
import com.study.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@RestController
public class LoginController {

    @Autowired
    UserDao userDao;



    @PostMapping("/login")
    public String login(User user, HttpServletRequest request){
        if (user == null ) return MyResponse.failed("参数为空");
        String a=JSON.toJSONString(user);
        User login = userDao.login(user.getUserName());
        if (login == null) return MyResponse.failed("账号不存在");
        if (!login.getPwd().equals(user.getPwd())) return MyResponse.failed("密码错误");
        HttpSession session = request.getSession();
        // 模拟登录
        session.setAttribute("user1",login);//在filter里面还有get
        session.setAttribute("username",user.getUserName());
        return MyResponse.success(login);
    }

    @PostMapping("/rigister")

    public String rigister(User user,HttpServletRequest request){
        if(user==null) return MyResponse.failed("参数为空");
        String passwordValue1=user.getPwd();
        boolean isDigital=false,isLetter=false,isUppCase=false,isZeichen=false;
        for(int i=0;i<passwordValue1.length();i++){
            char positionPwd=passwordValue1.charAt(i);
            if(Character.isDigit(positionPwd)){
                isDigital=true;
            }
            if(Character.isLetter(positionPwd)){
                if(Character.isUpperCase(positionPwd)){
                    isUppCase=true;
                }
                else{
                    isLetter=true;
                }
            }
            if(!Character.isLetter(positionPwd)&&!Character.isDigit(positionPwd)){
                isZeichen=true;
            }

        }
        if(isDigital==true&&isLetter==true&&isUppCase==true&&isZeichen==true){
            User rigi = userDao.rigister(user.getUserName());
            if(rigi!=null)return MyResponse.failed("用户名已存在");
            else{
                int a=userDao.addUser(user);
                HashMap hash=new HashMap();
                int identity=userDao.getId(user.getUserName());
                hash.put("uid",identity);
                hash.put("rid",3);
                int addRole=userDao.addRole(hash);

                if(a==0||addRole==0){return MyResponse.failed("unkown Error");}
                return MyResponse.success("注册成功");
            }
        }
        return MyResponse.failed("密码格式错误");
    }
 @PostMapping("/sharePost")
    public String shareInfo(SecretList scretlist, HttpServletRequest request){
     if (scretlist == null ) return MyResponse.failed("参数为空");
     String a=JSON.toJSONString(scretlist);

     HttpSession session = request.getSession();//能拿到session就是能拿到id和密码 需要session.get("username"),在用正常的方式获取书的信息，然后把它们放在borrow表里，再查询我的借阅去borrow表里查，只能看自己的
     String username = (String) session.getAttribute("username");
     String name=username;
     String text=scretlist.getText();
     long time=new Date().getTime();
     SimpleDateFormat s=new SimpleDateFormat("yyyy-MM-dd-HH-mm");
     String dateTime=s.format(time);
     SecretList list=new SecretList(name,text,dateTime);
        int success = userDao.success(list);
     if (success==0) return MyResponse.failed("数据异常");

     return MyResponse.success("提交成功");


 }
    @PostMapping("/getText")
    public String getText( HttpServletRequest request){
        List<SecretList> success=new ArrayList<>();
       success = userDao.getTexta();
        if (success==null) return MyResponse.failed("数据异常");
        JSONArray array=new JSONArray();
        for(SecretList a:success){
            array.add(JSON.toJSONString(a));

        }

          return array.toString() ;

    }



    @PostMapping("/likePost")
    public String getText(SecretList Id, HttpServletRequest request){
          int name=Id.getId();
        Integer numLikes = userDao.getLikes(name);
        if (numLikes==null) return MyResponse.failed("数据异常");
           else{
               HashMap hash=new HashMap();
               hash.put("id",name);
               hash.put("numLikes",numLikes+1);
               int insertNewLike=userDao.addLike(hash);
        }

        return MyResponse.success(numLikes+1);
    }

    @PostMapping("/PostMelden")
    public String getMelden(SecretList Id, HttpServletRequest request){
        int name=Id.getId()-100000;
        HashMap numLikes = userDao.getMelden(name);
        numLikes.get("id");
        if (numLikes==null) return MyResponse.failed("数据异常");
        else{
            String getUsername=userDao.searchMelden(name);
            if(getUsername!=null) {

                int insertNewMelden=userDao.setInsertMelden(numLikes);
            }
            else{
            int insertNewLike=userDao.addMelden(numLikes);}
        }

        return MyResponse.success("举报成功");
    }
    @PostMapping("/PostComment")
    public String getComment(SecretList Id, HttpServletRequest request){
       comment comm=new comment();
        int name=Id.getId();
        HttpSession session= request.getSession();
        String myUsername= (String) session.getAttribute("username");
        comm.setUser_id(myUsername);

        String seinUserName = userDao.getseinName(name);
        if (seinUserName==null) return MyResponse.failed("用户不存在");
        else{
            comm.setAuthor_id(seinUserName);
            String getVorherigText=userDao.searchVorherigText(name);

            comm.setText(getVorherigText);



        }

        return JSON.toJSONString(comm);
    }

    @PostMapping("/insertComment")
    public String insertComment(comment Id, HttpServletRequest request){

        int text_id=Id.getText_id();
        String inhalt=Id.getText();
        HashMap hash=new HashMap();
        hash.put("text_id",text_id);
        hash.put("inhalt",inhalt);

        String getVorherigText=userDao.searchVorherigText(text_id);
        if(getVorherigText==null){
            int insertText=userDao.insertText(hash);
            if(insertText==0){
                return MyResponse.failed("error");
            }
        }
        else{
            int insertText=userDao.updateText(hash);
            if(insertText==0){
                return MyResponse.failed("error");
            }
        }


        return MyResponse.success("更新成功");
    }

    @PostMapping("/getMessege")
    public String getMessege(comment Id, HttpServletRequest request){

        int text_id=Id.getText_id();
        String inhalt=Id.getShort_text();
        String myName=Id.getUser_id();
        String hisName=Id.getAuthor_id();
        HashMap hash=new HashMap();
        hash.put("text_id",text_id);
        hash.put("Short_text",inhalt);
        hash.put("User_id",myName);
        hash.put("Author_id",hisName);

       int res=userDao.insertMess(hash);
       if(res==0)MyResponse.failed("error");

        return MyResponse.success("更新成功");
    }

    @PostMapping("/getMees")
    public String getMees(comment Id, HttpServletRequest request){

        HttpSession session=request.getSession();
        String username= (String) session.getAttribute("username");
        List<comment> res=userDao.searchMess(username);

        for(comment a:res){
            String s=a.getShort_text();
            if(s.length()>=10){
            s=s.substring(0,9)+"...";
            a.setShort_text(s);}

        }
        if(res==null)MyResponse.failed("error");
        JSONArray arr=new JSONArray();
        for(comment a:res){
            arr.add(JSON.toJSONString(a));
        }

        return arr.toString();
    }

    @PostMapping("/deleteIt")
    public String deleteIt(comment Id, HttpServletRequest request){

       int idNum=Id.getId();
       int req=userDao.deleteIt(idNum);
        if(req==0)MyResponse.failed("error");
        return MyResponse.success("success");
    }

    @PostMapping("/getPages")
    public String getPages(comment Id, HttpServletRequest request){
        HttpSession session=request.getSession();
        String username= (String) session.getAttribute("username");
        int list= userDao.getAllMyS(username);
        int sum=list/4+(list%4==0?0:1);
        return String.valueOf(sum);
    }
    @PostMapping("/getPageText")
    public String getPageText(Page Id, HttpServletRequest request){
        int idNum=Id.getId();
        idNum=(idNum-1)*4;
        HttpSession session=request.getSession();
        String username= (String) session.getAttribute("username");
        HashMap hash=new HashMap();
        hash.put("page_id",idNum);
        hash.put("username",username);
        List<SecretList> list= userDao.getTexta2(hash);
        JSONArray arr=new JSONArray();
        for(SecretList a:list){
            arr.add(JSON.toJSONString(a));
        }

        return arr.toString();
    }
    @PostMapping("/getPages2")
    public String getPages2(comment Id, HttpServletRequest request){

        int list= userDao.getAllText();
        int sum=list/4+(list%4==0?0:1);
        return String.valueOf(sum);
    }
    @PostMapping("/getPageText2")
    public String getPageText2(Page Id, HttpServletRequest request){
        int idNum=Id.getId();
        idNum=(idNum-1)*4;
        HashMap hash=new HashMap();
        hash.put("page_id",idNum);
        List<SecretList> list= userDao.getTexta3(hash);
        JSONArray arr=new JSONArray();
        for(SecretList a:list){
            arr.add(JSON.toJSONString(a));
        }

        return arr.toString();
    }
}
