package com.yash.daoImpl;


import com.yash.dao.ItemDAO;
import com.yash.db.DBConnect;
import com.yash.entity.ItemDetails;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ItemDAOImpl  implements ItemDAO {

    private Connection conn2;


    public ItemDAOImpl() {
        this.conn2 = DBConnect.getConn2();
    }


    public boolean addItems(ItemDetails itemDetail) {

        boolean f = false;

        try {
            String sql = "insert into item_details(item_name , item_price , item_image , email,item_category, item_status) values (?,?,?,?,?,?)";
            PreparedStatement ps = conn2.prepareStatement(sql);
            ps.setString(1, itemDetail.getItem_name());
            ps.setString(2, itemDetail.getItem_price());
            ps.setString(3, itemDetail.getItem_image());
            ps.setString(4, itemDetail.getEmail());
            ps.setString(5, itemDetail.getItem_category());
            ps.setString(6, itemDetail.getItem_status());

            int i = ps.executeUpdate();

            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }


    public ArrayList<ItemDetails> getAllItems() {

        ArrayList<ItemDetails> list = new ArrayList<ItemDetails>();
        ItemDetails b = null;

        try {

            String sql = "select * from item_details";
            PreparedStatement ps = conn2.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                b = new ItemDetails();
                b.setItemId(rs.getInt(1));
                b.setItem_name(rs.getString(2));
                b.setItem_price(rs.getString(3));
                b.setItem_image(rs.getString(4));
                b.setEmail(rs.getString(5));
                b.setItem_category(rs.getString(6));
                b.setItem_status(rs.getString(7));
                list.add(b);
            }


        } catch (Exception e) {
            e.printStackTrace();
        }


        return list;
    }


    public ItemDetails getItemById(int id) {
        // TODO Auto-generated method stub
        return null;
    }


    public boolean deleteItem(int id) {
        boolean f = false;


        try {
            String sql = "delete from item_details where itemId=?";
            PreparedStatement ps = conn2.prepareStatement(sql);
            ps.setInt(1, id);
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }


    public List<ItemDetails> getCenterTableItem() {
        ArrayList<ItemDetails> list = new ArrayList<ItemDetails>();
        ItemDetails b = null;

        try {
            String sql = "select * from item_details  where item_category=? and item_status=?";
            PreparedStatement ps = conn2.prepareStatement(sql);
            ps.setString(1, "center_table");
            ps.setString(2, "active");
            ResultSet rs = ps.executeQuery();
            int i = 1;
            while (rs.next()) {
                b = new ItemDetails();

                b.setItemId(rs.getInt(1));
                b.setItem_name(rs.getString(2));
                b.setItem_price(rs.getString(3));
                b.setItem_image(rs.getString(4));
                b.setEmail(rs.getString(5));
                b.setItem_category(rs.getString(6));
                b.setItem_status(rs.getString(7));
                list.add(b);
                i++;
            }


        } catch (Exception e) {
            e.printStackTrace();
        }


        return list;
    }


    public List<ItemDetails> getSofaSetItem() {


        ArrayList<ItemDetails> list = new ArrayList<ItemDetails>();
        ItemDetails b = null;

        try {
            String sql = "select * from item_details  where item_category=? and item_status=?";
            PreparedStatement ps = conn2.prepareStatement(sql);
            ps.setString(1, "sofa_set");
            ps.setString(2, "active");
            ResultSet rs = ps.executeQuery();
            int i = 1;
            while (rs.next()) {
                b = new ItemDetails();

                b.setItemId(rs.getInt(1));
                b.setItem_name(rs.getString(2));
                b.setItem_price(rs.getString(3));
                b.setItem_image(rs.getString(4));
                b.setEmail(rs.getString(5));
                b.setItem_category(rs.getString(6));
                b.setItem_status(rs.getString(7));
                list.add(b);
                i++;
            }


        } catch (Exception e) {
            e.printStackTrace();
        }


        return list;
    }

    public java.util.List<ItemDetails> getVItem() {


        ArrayList<ItemDetails> list = new ArrayList<ItemDetails>();
        ItemDetails b = null;

        try {
            String sql = "select * from item_details  where item_category=? and item_status=?";
            PreparedStatement ps = conn2.prepareStatement(sql);
            ps.setString(1, "vases");
            ps.setString(2, "active");
            ResultSet rs = ps.executeQuery();
            int i = 1;
            while (rs.next()) {
                b = new ItemDetails();

                b.setItemId(rs.getInt(1));
                b.setItem_name(rs.getString(2));
                b.setItem_price(rs.getString(3));
                b.setItem_image(rs.getString(4));
                b.setEmail(rs.getString(5));
                b.setItem_category(rs.getString(6));
                b.setItem_status(rs.getString(7));
                list.add(b);
                i++;
            }


        } catch (Exception e) {
            e.printStackTrace();
        }


        return list;
    }


    public java.util.List<ItemDetails> getPItem() {

        ArrayList<ItemDetails> list = new ArrayList<ItemDetails>();
        ItemDetails b = null;

        try {
            String sql = "select * from item_details  where item_category=? and item_status=?";
            PreparedStatement ps = conn2.prepareStatement(sql);
            ps.setString(1, "photoframes");
            ps.setString(2, "active");
            ResultSet rs = ps.executeQuery();
            int i = 1;
            while (rs.next()) {
                b = new ItemDetails();

                b.setItemId(rs.getInt(1));
                b.setItem_name(rs.getString(2));
                b.setItem_price(rs.getString(3));
                b.setItem_image(rs.getString(4));
                b.setEmail(rs.getString(5));
                b.setItem_category(rs.getString(6));
                b.setItem_status(rs.getString(7));
                list.add(b);
                i++;
            }


        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;

    }
}


