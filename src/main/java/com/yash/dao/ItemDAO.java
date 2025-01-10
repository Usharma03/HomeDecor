package com.yash.dao;


import com.yash.entity.ItemDetails;

import java.util.ArrayList;
import java.util.List;

public interface ItemDAO {

    public boolean addItems(ItemDetails itemDetail);

    public ArrayList<ItemDetails> getAllItems();

    public ItemDetails getItemById(int id);

    public boolean deleteItem(int id);

    public List<ItemDetails> getCenterTableItem();

    public List<ItemDetails> getVItem();

    public List<ItemDetails> getPItem();

}
