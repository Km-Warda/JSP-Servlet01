package com.item.controller;

import java.io.IOException;
import java.util.List;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.item.model.Item;
import com.item.service.ItemService;
import com.item.service.implementation.ItemServiceimplementation;


/**
 * Servlet implementation class itemController
 */
@WebServlet("/itemController")
public class itemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DataSource dataSource;

       

    public itemController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// When calling $URL?actions=$VALUE
		// For example, http://localhost:8080/FORM?action=load-items
		// actions = {Null, add-item, update-item, remove-item, load-item, list-items}
		String action = request.getParameter("action");
		if (Objects.isNull(action)) {
			action = "list-items";
		}
		switch (action) {
			case "add-item":
				addItem(request, response);
				break;
			case "remove-item":
				removeItem(request, response);
				break;
			case "update-item":
				updateItem(request, response);
				break;
			case "load-item":
				loadItem(request, response);				
				break;
			case "list-items":
				listItems(request, response);
				break;
			default:
				listItems(request, response);
		}
	}

	private void updateItem(HttpServletRequest request, HttpServletResponse response) {
		ItemService itemService = new ItemServiceimplementation(dataSource);
		boolean updatedItem = itemService.updateItem(new Item()); 
	}

	private void listItems(HttpServletRequest request, HttpServletResponse response) {
		ItemService itemService = new ItemServiceimplementation(dataSource);
		List<Item> allItems = itemService.listItems();
	}

	private void loadItem(HttpServletRequest request, HttpServletResponse response) {
		ItemService itemService = new ItemServiceimplementation(dataSource);
		Item item = itemService.loadItem(1);
	}

	private void removeItem(HttpServletRequest request, HttpServletResponse response) {
		ItemService itemService = new ItemServiceimplementation(dataSource);
		Boolean removedItem = itemService.removeItem(1);
	}

	private void addItem(HttpServletRequest request, HttpServletResponse response) {
		ItemService itemService = new ItemServiceimplementation(dataSource);
		boolean newItem = itemService.addItem(new Item());
	}


}
