package com.yash.service;

import com.yash.entity.ItemOrder;
import com.yash.daoImpl.ItemOrderDAOImpl;

import java.util.List;

public class OrderSaveService {

  private ItemOrderDAOImpl itemOrderDAOImpl;

    public OrderSaveService() {
        this.itemOrderDAOImpl = new ItemOrderDAOImpl();
    }

    public boolean saveOrder(List<ItemOrder> blist){
        return itemOrderDAOImpl.saveOrder(blist);
    }
}
