package com.boot.Sachiya.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.boot.Sachiya.domain.ProductDomain;

public interface ProductRepository extends JpaRepository<ProductDomain,Integer>{
	
	//getAll products
	//find by Id
	//delete
	//update
	//custom query
	
	

}
