package com.yash.dao;

import com.yash.entity.User;

public interface UserDAO {

    public boolean userRegister(User us);

    public User login(String name , String password);

    public boolean checkPassword(int id , String ps);

    public boolean updateProfile(User us);
}
