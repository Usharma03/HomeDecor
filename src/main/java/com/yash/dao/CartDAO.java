package com.yash.dao;

import com.yash.entity.Cart;

import java.util.List;

public interface CartDAO {


    public boolean addCart(Cart cart);

    public List<Cart> getItembyUser(int userId);

    public boolean deleteItem(int iid, int uid , int cid);
}

