package com.adeveloperdiry;

import java.util.List;

import org.springframework.data.rest.core.annotation.RepositoryRestResource;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete
@RepositoryRestResource
public interface UserRepository {
	void save(User user);
	List<User> findAll();
	User findOne(int id);
	User findOne();
}
