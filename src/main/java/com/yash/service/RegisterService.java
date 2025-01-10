package com.yash.service;

import com.yash.entity.User;
import com.yash.daoImpl.UserDAOImpl;

public class RegisterService {

    private UserDAOImpl userDAOImpl;

    public RegisterService() {
        this.userDAOImpl=new UserDAOImpl();
    }

    public boolean userRegister(User us){
        return userDAOImpl.userRegister(us);
    }
}
