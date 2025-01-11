package com.yash.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

    private  static Connection conn2;

    public  static Connection getConn2() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn2= DriverManager.getConnection("jdbc:mysql://localhost:3306/decorhome" , "root","root");
        }catch (Exception e){
            e.printStackTrace();
        }
        return conn2;
    }
}