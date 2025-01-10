package com.yash.daoImpl;


import com.yash.dao.CartDAO;
import com.yash.db.DBConnect;
import com.yash.entity.Cart;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CartDAOImpl implements CartDAO {

    private Connection conn2;


    public CartDAOImpl() {

        this.conn2 = DBConnect.getConn2();
    }

    public boolean addCart(Cart cart) {

        boolean f = false;
        try {
            String sql = "insert into cart(iid,uid,itemname,price,total_price , iimage, uname , pno) values(?,?,?,?,?,?,?,?)";
            PreparedStatement ps = conn2.prepareStatement(sql);
            ps.setInt(1, cart.getIid());
            ps.setInt(2, cart.getUserId());
            ps.setString(3, cart.getItemname());
            ps.setDouble(4, cart.getPrice());
            ps.setDouble(5, cart.getTotalPrice());
            ps.setString(6, cart.getIimage());
            ps.setString(7, cart.getUname());
            ps.setString(8, cart.getPno());
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public List<Cart> getItembyUser(int userId) {

        List<Cart> cartList = new ArrayList<Cart>();
        Cart cart = null;

        double totalPrice = 0;
        try {
            String sql = "select * from cart where uid=?";
            PreparedStatement ps = conn2.prepareStatement(sql);
            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                cart = new Cart();
                cart.setCid(rs.getInt(1));
                cart.setIid(rs.getInt(2));
                cart.setUserId(rs.getInt(3));
                cart.setItemname(rs.getString(4));
                cart.setPrice(rs.getDouble(5));

                totalPrice = totalPrice + rs.getDouble(6);
                cart.setTotalPrice(totalPrice);

                cart.setIimage(rs.getString(7));
                cart.setUname(rs.getString(8));
                cart.setPno(rs.getString(9));

                cartList.add(cart);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cartList;
    }

    public boolean deleteItem(int iid ,int uid ,int cid) {
        boolean status = false;
        try {
            String sql = "delete from cart where iid=? and uid=? and cid=?";
            PreparedStatement ps = conn2.prepareStatement(sql);
            ps.setInt(1, iid);
            ps.setInt(2, uid);
            ps.setInt(3, cid);
            int i = ps.executeUpdate();

            if(i==1) {
                status=true;
            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return status;
    }

}
