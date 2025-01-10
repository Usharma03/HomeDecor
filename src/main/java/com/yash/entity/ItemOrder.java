package com.yash.entity;

public class ItemOrder {
    private int id;
    private String orderId;
    private String userName;
    private String phno;
    private String address;
    private String paymentType;
    private String itemName;
    private String price;

    public ItemOrder(int id, String orderId, String userName, String phno, String address, String paymentType, String itemName, String price) {
        this.id = id;
        this.orderId = orderId;
        this.userName = userName;
        this.phno = phno;
        this.address = address;
        this.paymentType = paymentType;
        this.itemName = itemName;
        this.price = price;
    }

    public ItemOrder() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhno() {
        return phno;
    }

    public void setPhno(String phno) {
        this.phno = phno;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}
