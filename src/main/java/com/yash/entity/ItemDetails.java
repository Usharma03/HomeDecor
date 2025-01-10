package com.yash.entity;

public class ItemDetails {
    private int itemId;
    private String item_name;
    private String item_price;
    private String item_image;
    private String email;
    private String item_category;
    private String item_status;

    public ItemDetails(int itemId, String item_name, String item_price, String item_image, String email, String item_category, String item_status) {
        this.itemId = itemId;
        this.item_name = item_name;
        this.item_price = item_price;
        this.item_image = item_image;
        this.email = email;
        this.item_category = item_category;
        this.item_status = item_status;
    }

    public ItemDetails( String item_name, String item_price, String item_image, String email,
                        String item_category, String item_status) {

        this.item_name = item_name;
        this.item_price = item_price;
        this.item_image = item_image;
        this.email = email;
        this.item_category = item_category;
        this.item_status = item_status;
    }

    public ItemDetails() {
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public String getItem_name() {
        return item_name;
    }

    public void setItem_name(String item_name) {
        this.item_name = item_name;
    }

    public String getItem_price() {
        return item_price;
    }

    public void setItem_price(String item_price) {
        this.item_price = item_price;
    }

    public String getItem_image() {
        return item_image;
    }

    public void setItem_image(String item_image) {
        this.item_image = item_image;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getItem_category() {
        return item_category;
    }

    public void setItem_category(String item_category) {
        this.item_category = item_category;
    }

    public String getItem_status() {
        return item_status;
    }

    public void setItem_status(String item_status) {
        this.item_status = item_status;
    }
}
