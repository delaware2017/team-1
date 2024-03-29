package com.adeveloperdiry;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {
    @Id
    private Integer id;

    private String name;

    private String email;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public boolean equals(Object obj) {
		final User u = (User) obj;
		if(this.id != u.id) {
			return false;
		} else if(this.name != u.name) {
			return false;
		} else if(this.email != u.email) {
			return false;
		} else {
			return true;
		}
		
	}
}