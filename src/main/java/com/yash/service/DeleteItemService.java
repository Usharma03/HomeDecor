package com.yash.service;

import com.yash.daoImpl.ItemDAOImpl;

public class DeleteItemService {

    private ItemDAOImpl itemDAOImpl;

    public DeleteItemService() {
        this.itemDAOImpl=new ItemDAOImpl();
    }

    public boolean deleteItem(int id){
        return itemDAOImpl.deleteItem(id);
    }


}
