package com.boot.Sachiya.Services;

import java.util.List;
import java.util.Optional;

import com.boot.Sachiya.domain.ProductDomain;



public interface ProductServices {

	List<ProductDomain> findAllProducts();

	String saveProduct(ProductDomain productdata);

	String updateProduct(ProductDomain newProductData);

	ProductDomain findById(Integer id);

	String deletebyId(Integer id);

	
	
	

	

	

	

	

}
