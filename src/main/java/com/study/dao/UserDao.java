package com.study.dao;


import com.study.bean.SecretList;
import com.study.bean.User;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
public interface UserDao {
    User login(String name);
    User rigister(String name);
    int addUser(User user);
    int getId(String userName);
    <Hash> int addRole(Hash hash);
    int success(SecretList list);
   List<SecretList> getTexta();
   Integer getLikes(Integer name);

   int addLike(HashMap hash);
    HashMap getMelden(Integer name);
    String searchMelden(Integer name);
    int setInsertMelden(HashMap hash);
    int addMelden(HashMap hash);
    String getseinName(int name);
    String searchVorherigText(int id);
    int insertText(HashMap text);
    int updateText(HashMap text);
}
