package com.service;

import java.util.List;
import com.category.CategoryVO;
import com.product.ProductVO;

public interface ProductService {
//	public int getTotal(int cid);
	public int add(ProductVO bean);
	public void update(ProductVO bean);
	public void delete(int id);
	public ProductVO get(int id);
	public List<ProductVO> list(int cid);
	public List<ProductVO> list();
	public void fill(List<CategoryVO> cs);
	public void fill(CategoryVO c);
	public void fillByRow(List<CategoryVO> cs);
	public void setFirstProductImage(ProductVO p);
	public void setSaleAndReviewNumber(ProductVO p);
	public void setSaleAndReviewNumber(List<ProductVO> products);
	public List<ProductVO> search(String keyword);
}
