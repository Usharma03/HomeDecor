package com.yash.service;

import com.yash.entity.User;
import com.yash.daoImpl.UserDAOImpl;

public class LoginService {

    private UserDAOImpl userDAOImpl;

    public LoginService() {
        this.userDAOImpl =new UserDAOImpl();
    }

    public User login(String name , String password){
        return userDAOImpl.login(name,password);
    }
}
