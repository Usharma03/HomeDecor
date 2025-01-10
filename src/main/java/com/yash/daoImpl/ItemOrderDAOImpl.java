package com.yash.daoImpl;


import com.yash.dao.ItemOrderDAO;
import com.yash.entity.ItemOrder;
import com.yash.db.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ItemOrderDAOImpl implements ItemOrderDAO {

    private Connection conn2;

    public ItemOrderDAOImpl() {
      conn2= DBConnect.getConn2();
    }



    public boolean saveOrder(List<ItemOrder> blist) {
        boolean f = false;
        try {
            String sql ="insert into orders(orderid, user_name  , address , phoneno, item_name , price, payment) values (?,?,?,?,?,?,?)";
            conn2.setAutoCommit(false);

            PreparedStatement ps=conn2.prepareStatement(sql);

            for(ItemOrder b:blist) {
                ps.setString(1, b.getOrderId());
                ps.setString(2, b.getUserName());
                ps.setString(3, b.getAddress());
                ps.setString(4, b.getPhno());
                ps.setString(5, b.getItemName());
                ps.setString(6, b.getPrice());
                ps.setString(7, b.getPaymentType());
                ps.addBatch();

            }

            int[] count  = ps.executeBatch();
            conn2.commit();
            f=(true);
            conn2.setAutoCommit(f);


        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public List<ItemOrder> getItem(String phno ) {
        List<ItemOrder> list =new ArrayList<ItemOrder>();
        ItemOrder o = null;

        try {

            String sql = "select * from orders where phoneno=?";
            PreparedStatement ps= conn2.prepareStatement(sql);
            ps.setString(1, phno);
            ResultSet rs=ps.executeQuery();
            while(rs.next()) {
                o = new ItemOrder();
                o.setId(rs.getInt(1));
                o.setOrderId(rs.getString(2));
                o.setUserName(rs.getString(3));
                o.setAddress(rs.getString(4));
                o.setPhno(rs.getString(5));
                o.setItemName(rs.getString(6));
                o.setPrice(rs.getString(7));
                o.setPaymentType(rs.getString(8));
                list.add(o);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }



    public List<ItemOrder> getItems() {

        List<ItemOrder> list =new ArrayList<ItemOrder>();
        ItemOrder o = null;

        try {

            String sql = "select * from orders ";
            PreparedStatement ps= conn2.prepareStatement(sql);
            //ps.setString(1, phno);
            ResultSet rs=ps.executeQuery();
            while(rs.next()) {
                o = new ItemOrder();
                o.setId(rs.getInt(1));
                o.setOrderId(rs.getString(2));
                o.setUserName(rs.getString(3));
                o.setAddress(rs.getString(4));
                o.setPhno(rs.getString(5));
                o.setItemName(rs.getString(6));
                o.setPrice(rs.getString(7));
                o.setPaymentType(rs.getString(8));
                list.add(o);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
