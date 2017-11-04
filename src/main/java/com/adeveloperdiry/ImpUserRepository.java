package com.adeveloperdiry;

import java.util.HashMap;
import java.util.List;

public class ImpUserRepository implements UserRepository {

	private HashMap<Integer, User> userCollection = new HashMap<Integer, User>();
	
	@Override
	public void save(User user) {
		this.userCollection.put(user.getId(), user);
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findOne(int id) {
		if(userCollection.containsKey(id)) {
			return this.userCollection.get(id);
		} 
		
		return null;
	}

	@Override
	public User findOne() {
		// TODO Auto-generated method stub
		return null;
	}

}
