package com.raj.service;

import java.util.List;

public interface ItemService {

	List findItemsByCategory(String category);
	
	Object findItemById(long id, String category);
	
	
	
}
