package com.item.service.implementation;

import java.util.List;

import javax.sql.DataSource;

import com.item.model.Item;
import com.item.service.ItemService;

public class ItemServiceimplementation implements ItemService {
	
	
	private DataSource dataSource;
	public ItemServiceimplementation (DataSource dataSource) {
		this.dataSource = dataSource;
	}
	// To ensure class usage after proper connection to database
	
	
	
	
	@Override
	public boolean addItem(Item item) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean removeItem(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateItem(Item item) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Item loadItem(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Item> listItems() {
		// TODO Auto-generated method stub
		return null;
	}

}
