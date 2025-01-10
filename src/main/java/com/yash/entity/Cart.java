package com.yash.entity;


public class Cart {
    private int cid;
    private int iid;
    private int userId;
    private String itemname;
    private double price;
    private double totalPrice;
    private String iimage;
    private String uname;
    private String pno;


    public Cart(int cid, int iid, int userId, String itemname, double price, double totalPrice, String iimage, String uname) {
        this.cid = cid;
        this.iid = iid;
        this.userId = userId;
        this.itemname = itemname;
        this.price = price;
        this.totalPrice = totalPrice;
        this.iimage = iimage;
        this.uname = uname;
    }

    public Cart() {
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getIid() {
        return iid;
    }

    public void setIid(int iid) {
        this.iid = iid;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getItemname() {
        return itemname;
    }

    public void setItemname(String itemname) {
        this.itemname = itemname;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getIimage() {
        return iimage;
    }

    public void setIimage(String iimage) {
        this.iimage = iimage;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPno() {
        return pno;
    }

    public void setPno(String pno) {
        this.pno = pno;
    }
}

