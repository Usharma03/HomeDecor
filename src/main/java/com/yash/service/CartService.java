package com.yash.service;

import com.yash.daoImpl.CartDAOImpl;
import com.yash.entity.Cart;

import java.util.List;

public class CartService {

    private CartDAOImpl cartDAOImpl;

    public CartService() {
        this.cartDAOImpl = new CartDAOImpl();
    }

    public boolean addCart(Cart cart) {
       return cartDAOImpl.addCart(cart);
    }

    public List<Cart> getItembyUser(int userId) {
        return cartDAOImpl.getItembyUser(userId);
    }

    public boolean deleteItem(int iid, int uid , int cid){
        return cartDAOImpl.deleteItem(iid,uid,cid);
    }

}
