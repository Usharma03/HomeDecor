package com.yash.service;

import com.yash.daoImpl.ItemDAOImpl;
import com.yash.entity.ItemDetails;

public class AddItemService {

    private ItemDAOImpl itemDAOImpl;

    public AddItemService() {
        this.itemDAOImpl=new ItemDAOImpl();
    }

    public boolean addItems(ItemDetails itemDetail){
        return itemDAOImpl.addItems(itemDetail);
    }
}
