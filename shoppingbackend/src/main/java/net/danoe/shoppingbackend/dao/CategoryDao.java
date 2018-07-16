package net.danoe.shoppingbackend.dao;

import java.util.List;

import net.danoe.shoppingbackend.dto.CategoryDto;

public interface CategoryDao {

	List<CategoryDto> list();
	
	CategoryDto selectById(int categoryId);
}
