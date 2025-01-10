package com.yash.dao;

import com.yash.entity.ItemOrder;

import java.util.List;

public interface ItemOrderDAO {


    public boolean saveOrder(List<ItemOrder> blist);

    public List<ItemOrder> getItem(String phno);

    public List<ItemOrder> getItems();
}