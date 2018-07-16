package net.danoe.shoppingbackend.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.danoe.shoppingbackend.dao.CategoryDao;
import net.danoe.shoppingbackend.dto.CategoryDto;

@Repository("categoryDao")
public class CategoryDaoImpl implements CategoryDao {

	private static List<CategoryDto> categories = new ArrayList<>();
	
	static {
		CategoryDto category = new CategoryDto();
		//
		category.setCategoryId(1);
		category.setCategoryName("Shoes");
		category.setDescription("Description for shoes");
		category.setImageUrl("shoes_1.png");
		//
		categories.add(category);
		
		//
		category = new CategoryDto();
		category.setCategoryId(2);
		category.setCategoryName("T-Shirt");
		category.setDescription("Description for T-shirt");
		category.setImageUrl("tshirt_1.png");
		//
		categories.add(category);
		
		//
		category = new CategoryDto();
		category.setCategoryId(3);
		category.setCategoryName("Shirt");
		category.setDescription("Description for shirt");
		category.setImageUrl("shirt_1.png");
		//
		categories.add(category);
	
	}
	
	public List<CategoryDto> list() {
		//
		return categories;
	}

	@Override
	public CategoryDto selectById(int categoryId) {
		// TODO Auto-generated method stub
		for(CategoryDto category : categories) {
			if (category.getCategoryId() == categoryId) return category;
		}
		
		return null;
	}
}
