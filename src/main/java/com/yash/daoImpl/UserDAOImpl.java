package com.yash.daoImpl;

import com.yash.dao.UserDAO;
import com.yash.entity.User;
import com.yash.db.DBConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class UserDAOImpl  implements UserDAO {

    private Connection conn2;

    public UserDAOImpl() {
     this.conn2= DBConnect.getConn2();
    }

    public boolean userRegister(User us) {
        boolean f = false;

        try {
            String  sql ="insert into user (name , email , phoneno, password) values(?,?,?,?)";
            PreparedStatement ps = conn2.prepareStatement(sql);
            ps.setString(1, us.getName());
            ps.setString(2, us.getEmail());
            ps.setString(3, us.getPhoneno());
            ps.setString(4, us.getPassword());

            int i = ps.executeUpdate();

            if(i==1) {
                f=true;
                System.out.println("user register success");
            }
        }catch(Exception e ){
            e.printStackTrace();

        }




        return f;
    }

    public User login (String name, String password) {
        User us = null;

        try {
            String sql = "select * from user where name = ? and password = ?";
            PreparedStatement ps = conn2.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, password);

            ResultSet rs =ps.executeQuery();
            while (rs.next()) {
                us=new User();
                us.setId(rs.getInt(1));
                us.setName(rs.getString(2));
                us.setEmail(rs.getString(3));
                us.setPhoneno(rs.getString(4));
                us.setPassword(rs.getString(5));
            }

        }catch(Exception e) {
            e.printStackTrace();
        }

        return us;
    }

    public boolean checkPassword( int id , String ps) {
        boolean f = false;
        try {

            String sql = "select * from user where id=? and password=?";
            PreparedStatement pst= conn2.prepareStatement(sql);
            pst.setInt(1, id);
            pst.setString(2, ps);

            ResultSet rs=pst.executeQuery();
            while(rs.next()) {
                f=true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public boolean updateProfile(User us) {
        boolean f = false;

        try {
            String  sql ="update user set  name=? , email=?, phoneno=? where id=?";
            PreparedStatement ps = conn2.prepareStatement(sql);
            ps.setString(1, us.getName());
            ps.setString(2, us.getEmail());
            ps.setString(3, us.getPhoneno());
            ps.setInt(4, us.getId());


            int i = ps.executeUpdate();

            if(i==1) {
                f=true;
                System.out.println("user register success");
            }
        }catch(Exception e ){
            e.printStackTrace();

        }
        return f;
    }

}
