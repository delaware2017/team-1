package com.adeveloperdiry;

import static org.junit.Assert.assertEquals;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class DemoApplicationTests {
	
	@Autowired
	ImpUserRepository repo = new ImpUserRepository();
	
	@Before
	public void before(){
		
	}

	@Test
	public void contextLoads() {
	}
	
	// Demonstrates a mock database
	@Test
	public void testRepo(){
		// Setup
		User correct = new User();
		correct.setEmail("uuu@udel.edu");
		correct.setId(1);
		correct.setName("Jonathan");
		
		// Perform
		repo.save(correct);
		
		// Assert
		User user = repo.findOne(correct.getId());
		assertEquals(correct, user);
	}

}
